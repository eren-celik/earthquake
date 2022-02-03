//
//  HomeView+Interactor.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import Foundation
import NetworkModule

final class HomeViewInteractor: HomeViewInteractorProtocol {
    
    weak var delegate: HomeViewInteractorDelegate?
    private let manager: NetworkManager
    private var quakes: [Response] = []
    
    init(manager: NetworkManager) {
        self.manager = manager
    }
    
    func load() {
        delegate?.handleOutput(.setLoading(true))
        manager.getEartquakes(limit: 20, date: "2022-01-31") { [weak self] (result) in
            switch result {
            case .success(let data):
                if let result = data.result {
                    self?.quakes = result
                    self?.delegate?.handleOutput(.showQuakes(result))
                    self?.delegate?.handleOutput(.setLoading(false))
                }
            case .failure(let error):
                self?.delegate?.handleOutput(.setLoading(false))
                print("DEBUG: interactor error", error.localizedDescription)
            }
        }
    }
    
    func selectQuakes(at index: Int) {
        let quake = quakes[index]
        delegate?.handleOutput(.showQuakeDetail(quake))
    }
}
