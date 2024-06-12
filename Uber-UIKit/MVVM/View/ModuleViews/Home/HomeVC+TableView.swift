//
//  HomeVC+TableView.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

extension HomeVC {
    
    /// Function to set up the home table view's delegate, data source, and register cells
    internal func homeTableViewSetup() {

        // Set the delegate and data source of the home table view to self
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        homeTableView.separatorStyle = .none
        
        // Register custom table view cells
        registerHomeTableViewCells()
    }
    
    /// Function to register custom table view cells
    private func registerHomeTableViewCells() {
        // Register a custom table view cell using its XIB file and identifier
        homeTableView.register(
            UINib(
                nibName: TableViewCellIdentifierEnums.EnterLocationPromptCell.rawValue,
                bundle: nil
            ),
            forCellReuseIdentifier: TableViewCellIdentifierEnums.EnterLocationPromptCell.rawValue
        )
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Table View Data Source Methods
    
    /// Return the number of sections in the table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7 // Hardcoded number of sections
    }
    
    /// Return the number of rows in the specified section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // Each section has one row
    }
    
    /// Provide a cell to display for a given row and section
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable table view cell of the specified type
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: TableViewCellIdentifierEnums.EnterLocationPromptCell.rawValue,
            for: indexPath
        ) as? EnterLocationPromptCell else { return UITableViewCell() } // Cast the dequeued cell to a custom cell type
        return cell // Return the dequeued cell
    }
}
