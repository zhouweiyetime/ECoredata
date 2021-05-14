//
//  DetailView.swift
//  Universities
//
//  Created by Weiye Zhou on 14/5/21.
//

import SwiftUI
import CoreData

struct DetailView: View{
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var university: University
    let eateriesviewmodel = EateriesViewModel()
    @Environment(\.editMode) var editMode
    
    
    var body: some View {
        VStack(spacing: 1.0) {
            eateriesviewmodel.download(university.imageString)
                .resizable()
                .scaledToFit()
            
            if editMode?.wrappedValue == .active {
                TextField("Enter image URL.", text: $university.imageString, onCommit: {
                    try? viewContext.save()
                }).onDisappear(perform: {
                    try? viewContext.save()
               })
            }
            
        List {
            TextField("Enter The Eatery Name", text: $university.nameString, onCommit: {
                        try? viewContext.save()
                    }).onDisappear(perform: {
                        try? viewContext.save()
                   })
            .font(.largeTitle)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
            
            TextField("Enter location", text: $university.locationString, onCommit: {
                        try? viewContext.save()
                    }).onDisappear(perform: {
                        try? viewContext.save()
                   })
            .font(.body)
            .scaledToFit()
            TextField("Enter note", text: $university.noteString, onCommit: {
                        try? viewContext.save()
                    }).onDisappear(perform: {
                        try? viewContext.save()
                   })

                Text("Review")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
            TextField("Enter review", text: $university.reviewString, onCommit: {
                        try? viewContext.save()
                    }).onDisappear(perform: {
                        try? viewContext.save()
                   })
                         }
    }.toolbar{
        EditButton()}
    }
    
}

