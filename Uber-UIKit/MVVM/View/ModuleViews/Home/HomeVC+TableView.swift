//
//  HomeVC+TableView.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

// MARK: - TABLEVIEW SETUP
extension HomeVC {
    
    /// Function to set up the home table view's delegate, data source, and register cells
    internal func homeTableViewSetup() {

        // Set the delegate and data source of the home table view to self
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        // Remove the default table view separator lines
        homeTableView.removeTableViewSeparator()
        
        // Register custom table view cells
        registerHomeTableViewCells()
    }
    
    /// Function to register custom table view cells
    private func registerHomeTableViewCells() {
        // Register a custom table view cell using its XIB file and identifier
        homeTableView.registerCells(
            cellIdentifiers: [
                TableViewCellIdentifierEnums.EnterLocationPromptCell.rawValue,
                TableViewCellIdentifierEnums.SuggestedDestinationCell.rawValue,
                TableViewCellIdentifierEnums.SuggestedVehiclesCell.rawValue,
                TableViewCellIdentifierEnums.RecommendationsCell.rawValue
            ]
        )
    }
}

// MARK: - TABLEVIEW DELEGATES
extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    /// Return the number of sections in the table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    /// Return the number of rows in the specified section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionsHavingRows1 = [0, 2]
        
        if sectionsHavingRows1.contains(section)  {
            return 1
        } else if section == 1 {
            return 2
        } else {
            return 1
        }
    }
    
    /// Provide a cell to display for a given row and section
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable table view cell of the specified type
        
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: TableViewCellIdentifierEnums.EnterLocationPromptCell.rawValue,
                for: indexPath
            ) as? EnterLocationPromptCell else { return UITableViewCell() } // Cast the dequeued cell to a custom cell type
            return cell // Return the dequeued cell
        } else if indexPath.section == 1 {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: TableViewCellIdentifierEnums.SuggestedDestinationCell.rawValue,
                for: indexPath
            ) as? SuggestedDestinationCell else { return UITableViewCell() }
            
            cell.destinationNameLabel.text = destinationNames[indexPath.row]
            cell.destinationAddressLabel.text = destinationAddresses[indexPath.row]
            return cell
        } else if indexPath.section == 2 {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: TableViewCellIdentifierEnums.SuggestedVehiclesCell.rawValue,
                for: indexPath
            ) as? SuggestedVehiclesCell else { return UITableViewCell() }
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: TableViewCellIdentifierEnums.RecommendationsCell.rawValue,
                for: indexPath
            ) as? RecommendationsCell else { return UITableViewCell() }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            
        }
    }
}
