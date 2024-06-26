//
//  LocationCardVC.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 22/06/24.
//

import UIKit
import MapKit
import CoreLocation

class LocationCardVC: UIViewController {

    // MARK: - IBOUTLETS
    @IBOutlet weak var locationCard: UIView!
    
    // MARK: - VIEWCONTROLLER LIFECYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetup()
    }
    
    // MARK: - IBACTIONS
    @IBAction func exitPopupTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
