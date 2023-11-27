//
//  Covid.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

// Estructura para representar datos de COVID
struct Covid: Identifiable, Codable {
    // Identificador único para cada instancia de Covid
    var id: UUID = UUID()
    
    // País al que pertenecen los datos de COVID
    var country : String
    
    // Región dentro del país (puede ser nulo o vacío dependiendo de la implementación)
    var region : String
    
    // Casos de COVID, almacenados como un diccionario donde la clave es la fecha y el valor es un objeto de tipo CovidCases
    var cases : [String: CovidCases]
    
    // Enumeración para especificar las claves de codificación para el mapeo entre objetos Swift y JSON
    enum CodingKeys: String, CodingKey {
        case country, region, cases
    }
}

// Estructura para representar casos de COVID
struct CovidCases: Codable {
    // Número total de casos
    var total: Int
    
    // Número de nuevos casos
    var new: Int
}
