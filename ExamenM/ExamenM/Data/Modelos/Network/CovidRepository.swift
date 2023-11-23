//
//  CovidRepository.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

struct Api {
    let base = "https://api.api-ninjas.com/v1/covid19?"
    
    struct routes {
        static let country = "&country=country"
    }

}

class CovidRepository: CovidAPIProtocol{
    let nservice: NetworkAPIService

    static let shared = CovidRepository()
    
    init(nservice: NetworkAPIService = NetworkAPIService.shared) {
        self.nservice = nservice
    }
        
    func getCovidList(limit: Int) async -> CovidC? {
        let apiInstance = Api()
        return await nservice.getCovid(url: URL(string:"\(apiInstance.base)\(Api.routes.country)")!,Limit: limit)
    }
}
