//
//  Covid.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

struct Covid: Identifiable, Codable {
    var id: UUID = UUID()
    var country : String
    var region : String
    var cases : [String: CovidCases]
    enum CodingKeys: String, CodingKey {
        case country, region, cases
    }
}

struct CovidCases: Codable {
    var total: Int
    var new: Int
}
