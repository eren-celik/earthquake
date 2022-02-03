//
//  HomeViewController+Style.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import Foundation

extension HomeViewController {
    
    internal func setupView() {
        configureUI()
    }
    
    private func configureUI() {
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}
