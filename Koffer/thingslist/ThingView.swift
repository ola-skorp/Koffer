//
//  ThingView.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import SwiftUI

struct ThingView: View {
    var thing: Thing
    var body: some View {
        Text("Thing \(thing.id)")
    }
}

struct ThingView_Previews: PreviewProvider {
    static var previews: some View {
        ThingView(thing: Thing(id: 1))
    }
}
