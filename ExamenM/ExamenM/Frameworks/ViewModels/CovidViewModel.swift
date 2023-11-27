//
//  CovidViewModel.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

// ViewModel para la vista de lista de COVID
class CovidListViewModel: ObservableObject {
    // Lista de datos de COVID
    @Published var covidList = [Covid]()
    // País actual seleccionado (por defecto, México)
    @Published var country: String
    
    // Requisito para obtener la lista de COVID (puede ser un servicio o una clase de gestión de datos)
    var covidListRequirement: CovidListRequirement
    
    // Inicializador del ViewModel
    init(covidListRequirement: CovidListRequirement = CovidListRequirement.shared) {
        // Asignar el requisito proporcionado
        self.covidListRequirement = covidListRequirement
        
        // Establecer el país predeterminado
        self.country = "mexico"
    }
    
    // Función para obtener la lista de COVID de manera asíncrona
    func getCovidList() async {
        // Obtener la lista de COVID utilizando el requisito
        self.covidList = await self.covidListRequirement.getCovidList(country: country) ?? []
    }
    
}
