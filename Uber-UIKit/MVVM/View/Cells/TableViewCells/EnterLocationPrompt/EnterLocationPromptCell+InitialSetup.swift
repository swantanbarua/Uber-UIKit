//
//  EnterLocationPromptCell+InitialSetup.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

extension EnterLocationPromptCell {
    
    /// Initial setup function
    internal func initialSetup() {
        // Set the corner radius of the capsule view to make it rounded
        setCornerRadiusToCapsuleView()
        
        // Apply shadow properties to the capsule view for a better visual effect
        applyShadowToCapsuleView()
    }

    /// Function to set corner radius to the capsule view
    private func setCornerRadiusToCapsuleView() {
        // Apply a capsule shape by setting the corner radius to 25
        capsuleView.setCornerRadius(radius: 25)
    }
    
    /// Function to apply shadow to the capsule view
    private func applyShadowToCapsuleView() {
        // Apply shadow with specified color, opacity, and radius to the capsule view
        capsuleView.applyShadow(
            color: .gray86,  // Set shadow color to gray86
            opacity: 0.5,    // Set shadow opacity to 0.5
            radius: 4        // Set shadow radius to 4
        )
    }
}
