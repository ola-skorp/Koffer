//
//  SuitcasesView.swift
//  Koffer
//
//  Created by Ольга on 14.03.25.
//

import SwiftUI

struct SuitcasesView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        VStack{
            HStack{
                Text("Suitcase1").frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .topLeading
                  )
                Button{
                    viewModel.goTo(thingId: 1)
                } label: {
                    Text("Show the only thing")
                }
            }.padding().border(Color.gray, width: 1)
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
    }
}

struct SuitcasesView_Previews: PreviewProvider {
    static var previews: some View {
        SuitcasesView()
    }
}
