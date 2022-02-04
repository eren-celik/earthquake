//
//  DetailViewController.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit
import MapKit
import NetworkModule

final class DetailViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var depthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var moreInfoButton: UIButton!
    
    var presenter: DetailViewPresenterProtocol!
    var response: Response?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.load()
    }
    
    @IBAction func moreInformationButtonClick(_ sender: UIButton) {
        presenter.moreInfo()
    }
    
    deinit {
        response = nil
    }
}

extension DetailViewController: DetailViewProtocol {
    
    func updateView(response: Response) {
        self.response = response
        setupStyle()
    }
}
