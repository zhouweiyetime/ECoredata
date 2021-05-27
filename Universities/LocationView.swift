//
//  LocationView.swift
//  Universities
//
//  Created by Weiye Zhou on 27/5/21.
//
import SwiftUI
import CoreData
import CoreLocation

//subview struct in master view
struct LocationView: View {
    //import the context from environment
    @Environment(\.managedObjectContext) var context
    //set instance for each university
    @ObservedObject var model: University
    //set instance for place
    @ObservedObject var place: LocationViewModel
    
    var body: some View{
        VStack{
            //a subview for displaying map
            MapView(viewModel: place)
            TextField("Enter your location name here.", text: $model.locationString)
                .font(.body)
            HStack{
                Text("Latitude:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                TextField("Enter your latitude here.", text: $model.latitudeString, onCommit: {
                    self.place.updateNameFromCoordinates()
                })
                    .font(.body)
            }
            HStack{
                Text("Longitude:")
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                TextField("Enter your longitude here.", text: $model.longitudeString, onCommit: {
                    self.place.updateNameFromCoordinates()
                })
                    .font(.body)
            }
            //click the button to update latitude and longitude avvording to location name
            Button("Find coordinates for location name"){
                self.place.updateCoordinatesFromName()
            }
        }
    }
}
