//
//  ThingDetailsView.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import SwiftUI

struct ThingDetailsView: View {
    var thingId: Int
    var body: some View {
        Text("Thing \(thingId)")
    }
}

struct ThingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ThingDetailsView(thingId: 1)
    }
}
