//
//  MapView.swift
//  Universities
//
//  Created by Weiye Zhou on 27/5/21.
//
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    //set instance for place
    @ObservedObject var viewModel: LocationViewModel
    
    //create the MKMap view and return
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        //implement the delegation to change
        
        return mapView
    }
    //the UIView region will change after user drag the map and change the coordinate
    func updateUIView(_ mapView: MKMapView, context: Context) {
        guard !viewModel.isUpdating else { return }
        let region = MKCoordinateRegion(center: viewModel.university.coordinates, latitudinalMeters: 10_000, longitudinalMeters: 10_000)
        mapView.setRegion(region, animated: true)
    }
}
