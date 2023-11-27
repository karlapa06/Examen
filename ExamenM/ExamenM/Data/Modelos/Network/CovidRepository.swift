//
//  CovidRepository.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

// Estructura que contiene la información base de la API
struct Api {
    // URL base para la API
    let base = "https://api.api-ninjas.com/v1/"
    
    // Estructura interna que contiene rutas específicas de la API
    struct routes {
        // Ruta para obtener datos de COVID-19
        static let covid = "covid19"
    }

}

// Repositorio para interactuar con la API de COVID-19
class CovidRepository: CovidAPIProtocol{
    // Servicio de red utilizado para realizar solicitudes HTTP
    let nservice: NetworkAPIService

    // Instancia compartida del repositorio (Singleton)
    static let shared = CovidRepository()
    
    // Inicializador que permite inyectar una instancia del servicio de red
    init(nservice: NetworkAPIService = NetworkAPIService.shared) {
        self.nservice = nservice
    }
        
    // Implementación del método para obtener la lista de casos de COVID-19 de la API
    func getCovidList(country: String) async -> [Covid]? {
        // Instancia de la estructura Api
        let apiInstance = Api()
        
        // Utiliza el servicio de red para realizar la solicitud HTTP y obtener los datos de COVID-19
        return await nservice.getCovid(url: URL(string:"\(apiInstance.base)\(Api.routes.covid)")!, country: country)
    }
}
