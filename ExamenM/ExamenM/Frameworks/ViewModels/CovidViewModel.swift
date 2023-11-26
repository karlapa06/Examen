//
//  CovidViewModel.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

class CovidListViewModel: ObservableObject {
    @Published var covidList = [Covid]()
    @Published var country: String
    
    var covidListRequirement: CovidListRequirement
    
    init(covidListRequirement: CovidListRequirement = CovidListRequirement.shared) {
        self.covidListRequirement = covidListRequirement
        self.country = "mexico"
    }
    
    func getCovidList() async {
        self.covidList = await self.covidListRequirement.getCovidList(country: country) ?? []
    }
}
