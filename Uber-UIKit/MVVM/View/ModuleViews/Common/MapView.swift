//
//  MapView.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 26/06/24.
//

import UIKit
import MapKit
import CoreLocation

class MapView: UIView, MKMapViewDelegate, CLLocationManagerDelegate {
    
    // MARK: - PROPERTIES
    
    private let mapView = MKMapView()
    private let locationManager = CLLocationManager()
    
    private var destinationCoordinate: CLLocationCoordinate2D?
    
}
