//
//  CovidListView.swift
//  ExamenM
//
//  Created by KARLA PADILLA on 23/11/23.
//

import SwiftUI
import UIKit

struct CovidListView: View {
    @StateObject var viewModel: CovidListViewModel
    var body: some View {
        VStack {
            // Encabezado
            Text("Análisis de los datos de covid")
                            .font(.headline)
            // Imagen de fondo
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
            
            // Lista de datos para mostrar la informacion
            List {
                ForEach(viewModel.covidList) { data in
                    // Cálculo del total de casos
                    let totalCases = data.cases.values.reduce(0) { $0 + $1.total }
                    // Mostrar el total de casos y la región
                    Text("Total Cases: \(totalCases)")
                    Text("Region: \(data.country)")
                    // Detalles por fecha
                    ForEach(data.cases.sorted(by: { $0.key < $1.key }), id: \.key) { (date, cases) in
                        Text("Date: \(date), Total: \(cases.total)")
                                }
                            }
                        }
            
           
        }.onAppear {
            // Cargar datos al aparecer la vista
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
