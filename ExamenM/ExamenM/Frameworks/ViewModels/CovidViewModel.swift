//
//  CovidViewModel.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

class CovidListViewModel: ObservableObject {
    @Published var covidList = [Covid]()
    
    var covidListRequirement: CovidListRequirement
    
    init(covidListRequirement: CovidListRequirement = CovidListRequirement.shared) {
        self.covidListRequirement = covidListRequirement
    }
    
    func getCovidList(country: String) async {
        self.covidList = await self.covidListRequirement.getCovidList(limit: limit)
    }
}
