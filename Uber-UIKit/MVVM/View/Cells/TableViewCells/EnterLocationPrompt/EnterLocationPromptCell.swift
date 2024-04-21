//
//  EnterLocationPromptCell.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

class EnterLocationPromptCell: UITableViewCell {

    // MARK: - IBOUTLETS
    @IBOutlet weak var capsuleView: UIView!
    
    // MARK: - LIFECYCLE METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initialSetup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - IBACTIONS
}
