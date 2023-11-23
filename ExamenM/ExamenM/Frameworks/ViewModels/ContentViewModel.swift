//
//  ContentViewModel.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

import Foundation


var covidListRequirement: CovidListRequirementProtocol
var covidInfoRequirement: CovidInfoRequirementProtocol

init(covidListRequirement: CovidListRequirementProtocol = CovidListRequirement.shared,
        covidInfoRequirement: CovidInfoRequirementProtocol = CovidInfoRequirement.shared) {
    self.covidListRequirement = covidListRequirement
    self.covidInfoRequirement = covidInfoRequirement
}



