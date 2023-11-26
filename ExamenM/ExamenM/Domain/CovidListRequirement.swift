//
//  CovidListRequirement.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

protocol CovidListRequirementProtocol {
    func getCovidList(country: String) async -> [Covid]?
}

class CovidListRequirement: CovidListRequirementProtocol {
    static let shared = CovidListRequirement()
    let dataRepository: CovidRepository
    
    init(dataRepository: CovidRepository = CovidRepository.shared) {
        self.dataRepository = dataRepository
    }

    
    func getCovidList(country: String) async -> [Covid]? {
        return await dataRepository.getCovidList(country: country)
    }
    
}


