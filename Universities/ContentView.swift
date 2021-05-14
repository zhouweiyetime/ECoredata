//
//  ContentView.swift
//  Universities
//
//  Created by Weiye Zhou on 13/5/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \HigherEd.name, ascending: true)],
        animation: .default)
    private var higherEd: FetchedResults<HigherEd>

    var body: some View {
        NavigationView {
            MasterView(higherEd: higherEd.first ?? HigherEd(context: viewContext))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}



