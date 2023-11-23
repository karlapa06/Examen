//
//  CovidListRequirement.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

protocol CovidCListRequirementProtocol {
    func getCovidList(limit: Int) async -> CovidC?
}

class CovidCListRequirement: CovidCListRequirementProtocol {
    
    static let shared = CovidListRequirement()

        func getCovidList(limit: Int) async -> CovidC? {
            return await dataRepository.getCovidList(limit: limit)
        }
        
        let dataRepository: CovidRepository
        
        init(dataRepository: CovidRepository = CovidRepository.shared) {
            self.dataRepository = dataRepository
        }
}


