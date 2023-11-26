//
//  CovidRepository.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

struct Api {
    let base = "https://api.api-ninjas.com/v1/"
    
    struct routes {
        static let covid = "covid19"
    }

}

class CovidRepository: CovidAPIProtocol{
    let nservice: NetworkAPIService

    static let shared = CovidRepository()
    
    init(nservice: NetworkAPIService = NetworkAPIService.shared) {
        self.nservice = nservice
    }
        
    func getCovidList(country: String) async -> [Covid]? {
        let apiInstance = Api()
        return await nservice.getCovid(url: URL(string:"\(apiInstance.base)\(Api.routes.covid)")!, country: country)
    }
}
