//
//  HomeViewController.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import UIKit
import NetworkModule

final class HomeViewController: UIViewController {
    
    //MARK: Properties
    var presenter: HomeViewPresenterProtocol!
    var quakes: [Response] = []
    
    //MARK: View Properties
    let tableView: UITableView = {
        let view = UITableView(frame: UIScreen.main.bounds)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(UITableViewCell.self,
                      forCellReuseIdentifier: "QuakeCell")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
        setupView()
    }
}
