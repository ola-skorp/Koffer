//
//  KofferApp.swift
//  Koffer
//
//  Created by Ольга on 13.03.25.
//

import SwiftUI

@main
struct KofferApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppViewModel())
        }
    }
}
