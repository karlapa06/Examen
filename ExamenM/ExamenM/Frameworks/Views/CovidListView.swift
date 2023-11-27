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
            Text("Análisis de los datos de covid")
                            .font(.headline)
                        ZStack{
                            GroupBox{
                                Spacer().frame(height: 80)
                                Image("cov")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: .infinity, height: 100)
                            }
                        }
                        Spacer().frame(height: 100)
                       
                        List {
                            ForEach(viewModel.covidList) { data in
                                let totalCases = data.cases.values.reduce(0) { $0 + $1.total }
                                       Text("Total Cases: \(totalCases)")
                            }
                        }
            
           
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
