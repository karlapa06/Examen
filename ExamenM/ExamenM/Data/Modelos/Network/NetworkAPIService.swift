//
//  NetworkAPIService.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation
import Alamofire

class NetworkAPIService{
    static let shared = NetworkAPIService()
    
    let apiKey = "OqJKGRTXDp+zahzsRWxK0A==tGnhnP7hJ6FD9CJO"
    
    func getCovid(url: URL, Limit: Int) async -> CovidC? {
            let parameters : Parameters = [
                "limit" : Limit
            ]
            
            var headers: HTTPHeaders = [:]
            headers["X-Api-Key"] = apiKey

            let taskRequest = AF.request(url, method: .get, parameters: parameters).validate()
            let response = await taskRequest.serializingData().response
            
            switch response.result{
            case.success(let data):
                do {
                    return try JSONDecoder().decode(CovidC.self, from: data)
                } catch {
                    return nil
                }
            case let .failure(error):
                debugPrint(error.localizedDescription)
                return nil
            }
        }
}


