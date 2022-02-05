//
//  HomeViewController.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit
import NetworkModule
import JGProgressHUD
// swiftlint:disable implicitly_unwrapped_optional
final class HomeViewController: UIViewController {
    // MARK: Properties
    var datePicker: UIDatePicker?
    let hud = JGProgressHUD()
    var presenter: HomeViewPresenterProtocol!
    var quakes: [Response] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    let tableView: UITableView = {
        let view = UITableView(frame: UIScreen.main.bounds)
        view.register(
            UITableViewCell.self,
            forCellReuseIdentifier: "QuakeCell"
        )
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load(
            date: Date().formatDate(),
            limit: nil)
        setupView()
    }
}
