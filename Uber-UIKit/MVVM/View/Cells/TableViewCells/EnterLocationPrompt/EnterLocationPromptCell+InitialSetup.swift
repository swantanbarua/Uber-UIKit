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
    }

    /// Function to set corner radius to the capsule view
    private func setCornerRadiusToCapsuleView() {
        // Apply a capsule shape by setting corner radius to 25
        capsuleView.setCornerRadius(radius: 25)
    }
}
