//
//  CovidListRequirement.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

protocol CovidListRequirementProtocol {
    func getCovidList(limit: Int) async -> Covid?
}

class CovidListRequirement: CovidListRequirementProtocol {
    
    static let shared = CovidListRequirement()

        func getCovidList(limit: Int) async -> Covid? {
            return await dataRepository.getCovidList(limit: limit)
        }
        
        let dataRepository: CovidRepository
        
        init(dataRepository: CovidRepository = CovidRepository.shared) {
            self.dataRepository = dataRepository
        }
}


