//
//  AppViewModel.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import Foundation

class AppViewModel: ObservableObject {
    @Published var currentTab: TabType = .home
    @Published var things = DataSource.things
    @Published var currentThingId: [Int] = []
    
    
    func goTo(thingId: Int) {
        currentTab = .things
        if !currentThingId.contains(thingId) {
            currentThingId.append(thingId)
        }
    }
}
