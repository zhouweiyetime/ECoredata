//
//  PlaceExtension.swift
//  Universities
//
//  Created by Weiye Zhou on 27/5/21.
//
import CoreLocation
import Foundation
import MapKit

extension LocationViewModel: MKMapViewDelegate {
    //function for the visible region change
    //update the cooradinate as the center of the map after user drag the map
    func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
        guard !isUpdating else { return }
        isUpdating = true
        let centre = mapView.centerCoordinate
        self.university.coordinates = centre
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .milliseconds(250)) {
            self.isUpdating = false
        }
    }
}
