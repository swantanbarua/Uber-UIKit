//
//  LocationCardVC+InitialSetup.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 26/06/24.
//

import UIKit

extension LocationCardVC {
    
    internal func initialSetup() {
        initialUISetup()
    }
    
    private func initialUISetup() {
        setCornerRadiusToLocationCard()
    }
    
    private func setCornerRadiusToLocationCard() {
        locationCard.setCornerRadius(radius: 8)
    }
}
