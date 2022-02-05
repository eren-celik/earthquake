//
//  HomeViewController+Style.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit

extension HomeViewController {
    internal func setupView() {
        configureUI()
        setupNavigation()
        setHudStyle()
    }

    private func setHudStyle() {
        hud.textLabel.text = "Loading"
        hud.style = .dark
    }

    private func configureUI() {
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }

    private func setupNavigation() {
        let dateButton = UIBarButtonItem(
            image: UIImage(systemName: "calendar"),
            style: .plain,
            target: self,
            action: #selector(openCalendar)
        )
        self.navigationItem.rightBarButtonItem = dateButton
    }
}
