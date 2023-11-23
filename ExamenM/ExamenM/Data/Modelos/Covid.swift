//
//  Covid.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import Foundation

struct Covid: Codable{
    var count : Int
    var results : [CovidC]
}

struct CovidC: Codable {
    var country : String?
    var region : String?
    var Date: Int
    var total: Int
    var new: Int
}
