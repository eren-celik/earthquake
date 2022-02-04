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
    private unowned let manager: NetworkManager
    private var quakes: [Response] = []
    
    init(manager: NetworkManager) {
        self.manager = manager
    }
    
    func load(date: String?, limit: Int?) {
        delegate?.handleOutput(.setLoading(true))
        defer { self.delegate?.handleOutput(.setLoading(false)) }
        manager.getEartquakes(limit: limit ?? 20, date: date ?? "2022-01-31") { [weak self] (result) in
            switch result {
            case .success(let data):
                if let result = data.result {
                    if result.isEmpty {
                        self?.delegate?.handleOutput(.showError("No Data"))
                    }
                    self?.quakes = result
                    self?.delegate?.handleOutput(.showQuakes(result))
                }
            case .failure(let error):
                self?.delegate?.handleOutput(.showError(error.localizedDescription))
            }
        }
    }
    
    func selectQuakes(at index: Int) {
        let quake = quakes[index]
        delegate?.handleOutput(.showQuakeDetail(quake))
    }
}
