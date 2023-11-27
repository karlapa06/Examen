//
//  CovidAPIProtocol.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

// Protocol for the Covid API interactions
protocol CovidAPIProtocol{
    //https://api.api-ninjas.com/v1/covid19
    // Asynchronous method to fetch Covid data for a specific country
    func getCovidList(country: String) async -> [Covid]?
    
}
