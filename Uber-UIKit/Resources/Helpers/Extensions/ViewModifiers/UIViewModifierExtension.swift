//
//  UIViewModifierExtension.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

extension UIView {
    
    /// Function to set corner radius of a UIView
    func setCornerRadius(radius: CGFloat) {
        // Enable masking to bounds to clip subviews that extend beyond the rounded corners
        self.layer.masksToBounds = true
        
        // Set the corner radius to the specified value
        self.layer.cornerRadius = radius
    }
}
