//
//  SuggestedVehiclesView.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 03/07/24.
//

import UIKit

final class SuggestedVehiclesView: UIView {
    
    // Initializer when creating the view programmatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    // Initializer when loading the view from a storyboard or nib file
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()
    }
    
    // Configures the view by loading it from the corresponding nib file
    private func configureView() {
        // Attempt to load the view from the nib file specified by CustomNibEnums.SuggestedVehiclesView
        guard let view = self.loadViewFromNib(
            nibName: CustomNibEnums.SuggestedVehiclesView.rawValue
        ) else { return }
        
        // Set the frame of the loaded view to match the bounds of the current view
        view.frame = self.bounds
        
        // Add the loaded view as a subview to the current view
        self.addSubview(view)
    }
}
