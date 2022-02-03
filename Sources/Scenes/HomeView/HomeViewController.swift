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
    private var quakes: [Response] = []
    
    //MARK: View Properties
    private let tableView: UITableView = {
        let view = UITableView(frame: UIScreen.main.bounds)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(UITableViewCell.self,
                      forCellReuseIdentifier: "QuakeCell")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }
    
    func configureUI() {
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}

extension HomeViewController: HomeViewProtocol {
    
    func handleOutput(_ output: HomeViewPresenterOutput) {
        switch output {
        case .updateTitle(let title):
            self.title = title
        case .setLoading(_):
            break
        case .showQuakes(let quake):
            self.quakes = quake
            self.tableView.reloadData()
        }
    }
}


extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        presenter.selectQuake(at: indexPath.row)
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quakes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuakeCell", for: indexPath)
        let quake = quakes[indexPath.row]
        cell.textLabel?.text = quake.title
        cell.detailTextLabel?.text = quake.date
        return cell
    }
}
