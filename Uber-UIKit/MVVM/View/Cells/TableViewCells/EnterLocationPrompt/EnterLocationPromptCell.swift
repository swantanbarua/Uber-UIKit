//
//  EnterLocationPromptCell.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

class EnterLocationPromptCell: UITableViewCell {

    // MARK: - IBOUTLETS
    
    /// Outlet to the view representing the capsule shape
    @IBOutlet weak var capsuleView: UIView!
    @IBOutlet weak var nowContainerView: UIView!
    
    // MARK: - LIFECYCLE METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Perform initial setup when the cell is awakened from a nib
        initialSetup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - IBACTIONS
    @IBAction func enterDropLocationTapped(_ sender: UIButton) {
    }
    
    @IBAction func nowCapsuleTapped(_ sender: UIButton) {
    }
}
