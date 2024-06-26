//
//  MapView+InitialSetup.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 26/06/24.
//

import UIKit
import MapKit
import CoreLocation

extension MapView {
    
    internal func setupView() {
        mapView.frame = self.bounds
        mapView.delegate = self
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func setDestination(
        latitude: Double,
        longitude: Double
    ) {
        destinationCoordinate = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
        
        if let destination = destinationCoordinate {
            let annotation = MKPointAnnotation()
            
            annotation.coordinate = destination
            mapView.addAnnotation(annotation)
        }
    }
}
