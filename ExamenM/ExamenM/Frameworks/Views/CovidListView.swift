//
//  CovidListView.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import SwiftUI

struct CovidListView: View {
    @StateObject var viewModel: CovidListViewModel
    var body: some View {
        VStack {
           // TextField("País", text: $viewModel.country)
            Text("ME AMO A MI MISMA")
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
