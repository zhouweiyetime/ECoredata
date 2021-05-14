//
//  RowView.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//

import SwiftUI

struct RowView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var university: University
    let eateriesviewmodel = EateriesViewModel()
    
    var body: some View {
        eateriesviewmodel.download(university.imageString).resizable().frame(width: 80, height: 80)
        VStack(alignment: .leading) {
            Text(university.nameString)
            .font(.headline)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
            Text(university.locationString)
            .font(.headline)
            .fontWeight(.bold)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
        }
}
}
