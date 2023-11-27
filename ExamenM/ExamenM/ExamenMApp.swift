//
//  ExamenMApp.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import SwiftUI

@main
struct ExamenMApp: App {
    var body: some Scene {
        WindowGroup {
            CovidViewModel(viewModel: CovidListViewModel())
        }
    }
}
