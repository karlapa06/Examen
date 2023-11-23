//
//  CovidAPIService.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation
import Alamofire

class CovidCAPIService{
    static let shared = CovidAPIService ()
    
    func getCovidList() -> CovidListRequirement{};
    
    func getCovidInfo() -> CovidInfoRequirement{};
    
}

