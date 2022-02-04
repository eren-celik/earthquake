//
//  DetailView+Style.swift
//  earthquake
//
//  Created by Eren  Çelik on 4.02.2022.
//

import UIKit
import MapKit
import NetworkModule

extension DetailViewController {
    
    internal func setupStyle() {
        configureLabels()
        setCornerRadius()
        setMapPin(location: CLLocationCoordinate2D(latitude: response?.coordinates?.first ?? 0,
                                                   longitude: response?.coordinates?[1] ?? 0))
    }
    
    private func setMapPin(location: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = response?.title
        
        let center = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        mapView.addAnnotation(annotation)
        mapView.setRegion(region, animated: true)
    }
    
    private func configureLabels() {
        locationLabel.text = "Lokasyon: \(response?.title ?? "")"
        depthLabel.text = "Derinlik: \(response?.depth ?? 0) KM"
        dateLabel.text = "Tarih: \(response?.date ?? "")"
    }
    
    private func setCornerRadius() {
        moreInfoButton.layer.cornerRadius = 15
    }
}
