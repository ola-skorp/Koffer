//
//  ThingsView.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import SwiftUI

struct ThingsListView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        List(viewModel.things){ item in
            NavigationLink(value: item.id){
                ThingView(thing: item)
            }
        }.navigationDestination(for: Int.self, destination: { selectedId in
            ThingDetailsView(thingId: selectedId)
        })
    }
}

struct ThingsView_Previews: PreviewProvider {
    static var previews: some View {
        ThingsListView()
    }
}
