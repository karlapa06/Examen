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
    
    func getCovid(url: URL, Limit: Int) async -> Covid? {
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
                    print(String(data: data, encoding: .ascii) ?? "")
                    return try JSONDecoder().decode(Covid.self, from: data)
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


