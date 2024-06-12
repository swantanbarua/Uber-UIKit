//
//  UITableView+Extension.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 12/06/24.
//

import UIKit

extension UITableView {
    
    func removeTableViewSeparator() {
        self.separatorStyle = .none
    }
    
    func registerCells(cellIdentifiers: [String]) {
        cellIdentifiers.forEach { cellId in
            self.register(
                UINib(
                    nibName: cellId,
                    bundle: nil
                ),
                forCellReuseIdentifier: cellId
            )
        }
    }
}
