//
//  MapView+InitialSetup.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 26/06/24.
//

import UIKit

extension MapView {
    
    internal func setupView() {
        mapView.frame = self.bounds
        mapView.delegate = self
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
