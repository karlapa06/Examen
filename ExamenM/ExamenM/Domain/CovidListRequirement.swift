//
//  CovidListRequirement.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

// Protocolo para los requisitos de la lista de Covid
protocol CovidListRequirementProtocol {
    // Método para obtener la lista de casos de Covid de forma asíncrona
    func getCovidList(country: String) async -> [Covid]?
}

// Implementación del protocolo de requisitos de la lista de Covid
class CovidListRequirement: CovidListRequirementProtocol {
    // Instancia compartida de los requisitos de la lista de Covid
    static let shared = CovidListRequirement()
    let dataRepository: CovidRepository
    
    // Inicializador
    init(dataRepository: CovidRepository = CovidRepository.shared) {
        self.dataRepository = dataRepository
    }

    // Implementación del método para obtener la lista de casos de Covid
    func getCovidList(country: String) async -> [Covid]? {
        return await dataRepository.getCovidList(country: country)
    }
    
}


