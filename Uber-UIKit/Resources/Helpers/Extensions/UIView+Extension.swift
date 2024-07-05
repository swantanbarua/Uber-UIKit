//
//  UIView+Extension.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 12/06/24.
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
    
    func applyShadow(
        color: UIColor,
        opacity: Float,
        radius: CGFloat
    ) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = radius
        self.layer.masksToBounds = false
    }
}

extension UIView {
    
    func loadViewFromNib(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(
            nibName: nibName,
            bundle: bundle
        )
        
        return nib.instantiate(
            withOwner: self,
            options: nil
        ).first as? UIView
    }
}
