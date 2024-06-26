//
//  SuggestedDestinationCell.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/06/24.
//

import UIKit

class SuggestedDestinationCell: UITableViewCell {

    // MARK: - IBOUTLETS
    @IBOutlet weak var destinationNameLabel: UILabel!
    @IBOutlet weak var destinationAddressLabel: UILabel!
    
    // MARK: - LIFECYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
