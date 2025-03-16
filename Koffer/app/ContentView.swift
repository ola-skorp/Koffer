//
//  ContentView.swift
//  Koffer
//
//  Created by Ольга on 13.03.25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        VStack {
            TabView(selection: $viewModel.currentTab){
                HomeView()
                    .tabItem{ Label("Home", systemImage: "house.fill") }
                    .tag(TabType.home)
                
                SuitcasesView()
                    .tabItem{ Label("Suitcases", systemImage: "suitcase.fill") }
                    .tag(TabType.suitcases)
                
                ThingsNavigationView()
                    .tabItem{ Label("Things", systemImage: "list.bullet.rectangle.fill") }
                    .tag(TabType.things)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
