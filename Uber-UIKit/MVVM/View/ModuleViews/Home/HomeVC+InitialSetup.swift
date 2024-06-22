//
//  HomeVC+InitialSetup.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

extension HomeVC {
    
    /// Function to perform initial setup of the view controller
    internal func initialSetup() {
        
        // Set up the home table view
        homeTableViewSetup()
        
        addLongPressGestureRecognizer()
    }
    
    private func addLongPressGestureRecognizer() {
        let longPressRecognizer = UILongPressGestureRecognizer(
            target: self,
            action: #selector(handleLongPress)
        )
        
        homeTableView.addGestureRecognizer(longPressRecognizer)
    }
    
    @objc func handleLongPress(gestureRecognizer: UILongPressGestureRecognizer) {
        if gestureRecognizer.state == .began {
            let point = gestureRecognizer.location(in: homeTableView)
            if let indexPath = homeTableView.indexPathForRow(at: point) {
                if indexPath.section == 1 {
                    
                }
            }
        }
    }
}
