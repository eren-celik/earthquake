//
//  HomeView+Presenter.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//

import Foundation

final class HomeViewPresenter: HomeViewPresenterProtocol {
    
    private unowned let view: HomeViewProtocol
    private let interactor: HomeViewInteractorProtocol
    private let router: HomeViewRouterProtocol
    
    init(view: HomeViewProtocol,
         interactor: HomeViewInteractorProtocol,
         router: HomeViewRouterProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
        
        self.interactor.delegate = self
    }
    
    func load(date: String?, limit: Int?) {
        view.handleOutput(.updateTitle("Quakes"))
        interactor.load(date: date, limit: limit)
    }
    
    func selectQuake(at index: Int) {
        interactor.selectQuakes(at: index)
    }
}

extension HomeViewPresenter: HomeViewInteractorDelegate {
    
    func handleOutput(_ output: HomeViewInteractorOutput) {
        switch output {
        case .setLoading(let loading):
            view.handleOutput(.setLoading(loading))
        case .showQuakes(let quakes):
            view.handleOutput(.showQuakes(quakes))
        case .showQuakeDetail(let quake):
            router.navigate(to: .detail(quake))
        case .showError(let message):
            router.showAlert(with: message)
        }
    }
}
