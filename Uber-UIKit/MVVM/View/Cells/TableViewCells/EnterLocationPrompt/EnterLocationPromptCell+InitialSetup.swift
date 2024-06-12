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
        // Set corner radius to the capsule view
        setCornerRadiusToCapsuleView()
        
        applyShadowToCapsuleView()
    }

    /// Function to set corner radius to the capsule view
    private func setCornerRadiusToCapsuleView() {
        // Apply a capsule shape by setting corner radius to 25
        capsuleView.setCornerRadius(radius: 25)
    }
    
    private func applyShadowToCapsuleView() {
        capsuleView.applyShadow(
            color: .gray86,
            opacity: 0.5,
            radius: 4
        )
    }
}
