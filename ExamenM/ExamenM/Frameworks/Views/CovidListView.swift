//
//  CovidListView.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import SwiftUI
import UIKit
import Charts

struct CovidListView: View {
    @StateObject var viewModel: CovidListViewModel
    var body: some View {
        VStack {
           // TextField("País", text: $viewModel.country)
            Text("Ejemplo")
            
           
        }.onAppear {
            Task {
                await viewModel.getCovidList()
            }
        }
    }
    
}

struct CovidListView_Previews: PreviewProvider {
    static var previews: some View {
        CovidListView(viewModel: CovidListViewModel())
    }
}
