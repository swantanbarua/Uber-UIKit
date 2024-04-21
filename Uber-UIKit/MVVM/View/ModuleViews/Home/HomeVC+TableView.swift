//
//  HomeVC+TableView.swift
//  Uber-UIKit
//
//  Created by Swantan Barua on 21/04/24.
//

import UIKit

extension HomeVC {
    
    internal func homeTableViewSetup() {
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        registerHomeTableViewCells()
    }
    
    private func registerHomeTableViewCells() {
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: TableViewCellIdentifierEnums.EnterLocationPromptCell.rawValue,
            for: indexPath
        ) as? EnterLocationPromptCell else { return UITableViewCell() }
        return cell
    }
}
