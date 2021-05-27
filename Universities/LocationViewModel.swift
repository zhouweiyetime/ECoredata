//
//  LocationViewModel.swift
//  Universities
//
//  Created by Weiye Zhou on 27/5/21.
//

import CoreLocation
import Foundation
import MapKit

@objc class LocationViewModel: NSObject, Identifiable, ObservableObject {
    //set instance for university
    @Published var university: University

    //initial the university
    init(university: University) {
        self.university = university
    }
    //a variable to define screen locking status
    var isUpdating = false
    //function to update latitude and longitude avvording to location name
    func updateCoordinatesFromName(){
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(self.university.locationString) { (maybePlaceMarks, maybeError) in
            guard let placemark = maybePlaceMarks?.first,
                let location = placemark.location else {
                    let description: String
                    if let error = maybeError {
                        description = "\(error)"
                    } else {
                        description = "<Unknown Error>"
                    }
                    print("Got an error: \(description)")
                    return
            }
            self.university.coordinates = location.coordinate
        }
    }
    //function to update location name according to the latitude and longitude
    func updateNameFromCoordinates(){
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: self.university.latitude, longitude: self.university.longitude)
        geocoder.reverseGeocodeLocation(location) { (maybePlaceMarks, maybeError) in
            guard let placemark = maybePlaceMarks?.first else {
                    let description: String
                    if let error = maybeError {
                        description = "\(error)"
                    } else {
                        description = "<Unknown Error>"
                    }
                    print("Got an error: \(description)")
                    return
            }
            self.university.locationString = placemark.name ?? placemark.locality ?? placemark.subLocality ?? placemark.administrativeArea ?? placemark.country ?? "<Unkown name>"
        }
    }
}

