//
//  Covid.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

struct Covid: Identifiable, Decodable {
    var id: UUID = UUID()
    var country : String
    var region : String
    var results : [String: CovidCases]
}

struct CovidCases: Codable, Identifiable {
    var id = UUID()
    var Date: String
    var total: Int
    var new: Int
}
