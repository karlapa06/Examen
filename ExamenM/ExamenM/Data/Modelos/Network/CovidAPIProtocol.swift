//
//  CovidAPIProtocol.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

protocol CovidAPIProtocol{
    //https://api.api-ninjas.com/v1/covid19
    func getCovidList(limit: Int) async -> Covid?
    
}
