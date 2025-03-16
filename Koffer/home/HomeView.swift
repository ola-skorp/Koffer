//
//  HomeView.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import SwiftUI

struct HomeView: View {
    @State var isActive = false
    var body: some View {
        VStack{
            Text("Welcome to your Koffer")
            Button{
                isActive = true
            } label: {
                Text("Check my suitcases")
            }.padding()
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        ).popover(isPresented: $isActive) {
            Text("Your suitcases are ok")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
