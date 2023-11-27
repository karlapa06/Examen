//
//  NetworkAPIService.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation
import Alamofire

// Service for handling network requests related to Covid data
class NetworkAPIService{
    // Shared instance of the service
    static let shared = NetworkAPIService()
    
    // API key for authorization
    let apiKey = "OqJKGRTXDp+zahzsRWxK0A==tGnhnP7hJ6FD9CJO"
    
    // Asynchronous method to get Covid data from the API
    func getCovid(url: URL, country: String) async -> [Covid]? {
            let parameters : Parameters = [
                "country" : country
            ]
            
            var headers: HTTPHeaders = [:]
            headers["X-Api-Key"] = apiKey

            // Perform the network request using Alamofire
            let taskRequest = AF.request(url, method: .get, parameters: parameters, headers: headers).validate()
            let response = await taskRequest.serializingData().response
            
            // Handle the response
            switch response.result{
            case.success(let data):
                do {
                    print(String(data: data, encoding: .ascii) ?? "")
                    // Decode the JSON data into an array of Covid objects
                    return try JSONDecoder().decode([Covid].self, from: data)
                } catch {
                    debugPrint(error)
                    return nil
                }
            case let .failure(error):
                debugPrint(error.localizedDescription)
                return nil
            }
        }
}


