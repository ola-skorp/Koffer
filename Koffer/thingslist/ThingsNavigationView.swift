//
//  ThingsNavigationView.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import SwiftUI

struct ThingsNavigationView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        NavigationStack(path: $viewModel.currentThingId) {
            VStack {
                ThingsListView()
            }
        }
    }
}

struct ThingsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ThingsNavigationView()
    }
}
