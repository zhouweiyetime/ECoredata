//
//  MasterView.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//

import SwiftUI

struct MasterView: View{
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var higherEd: HigherEd
    @Environment(\.editMode) var editMode
    
    var body: some View{
        VStack{
            if editMode?.wrappedValue == .active {
                HStack{
                    Text("📝").font(Font.system(.largeTitle).bold())
                    TextField("enter title", text: $higherEd.titleString).font(Font.system(.largeTitle).bold())
                }
            }
            
        List {
            ForEach(higherEd.universitiesArray) { uni in
                NavigationLink(
                    destination: DetailView(university: uni),
                    label:{
                        RowView(university: uni)
                    })
                
            }
            .onDelete { offsets in
                withAnimation { higherEd.deleteItems(offsets: offsets) }
            }
            .onMove(perform: onMove)
        }.navigationBarItems(leading: EditButton(), trailing: Button(action: {
            withAnimation{
            higherEd.addItem()
            }
        }) {
            Label("", systemImage: "plus")
        })
    } .navigationBarTitle(editMode?.wrappedValue == .active ? "" : higherEd.title ?? "The Best Eateries:")
    }
    private func onMove(source: IndexSet, destination: Int) {
        self.higherEd.universitiesArray.move(fromOffsets: source, toOffset: destination)
    }
}


