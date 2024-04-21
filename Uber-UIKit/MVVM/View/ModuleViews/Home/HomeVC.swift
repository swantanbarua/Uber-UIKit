//
//  HomeVC.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 20/04/24.
//

import UIKit

class HomeVC: UIViewController {

    // MARK: - IBOUTLETS
    
    /// Outlet to the table view in the home view controller
    @IBOutlet weak var homeTableView: UITableView!
    
    // MARK: - VIEWCONTROLLER LIFECYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform initial setup when the view controller is loaded into memory
        initialSetup()
    }
    
    // MARK: - IBACTIONS
}
