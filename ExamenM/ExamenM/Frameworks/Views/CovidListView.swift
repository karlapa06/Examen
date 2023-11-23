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
}

struct CovidListView_Previews: PreviewProvider {
    static var previews: some View {
        CovidListView(viewModel: CovidListViewModel())
    }
}
