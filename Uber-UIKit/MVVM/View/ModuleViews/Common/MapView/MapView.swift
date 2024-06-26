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
    
    let mapView = MKMapView()
    let locationManager = CLLocationManager()
    
    private var destinationCoordinate: CLLocationCoordinate2D?
    
    // MARK: - VIEWCONTROLLER LIFECYCLE METHODS
    
    // INIT
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
