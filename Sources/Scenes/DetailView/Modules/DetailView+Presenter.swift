//
//  DetailView+Presenter.swift
//  earthquake
//
//  Created by Eren  Çelik on 4.02.2022.
//

import Foundation
import struct NetworkModule.Response

final class DetailViewPresenter {
    private unowned let view: DetailViewProtocol
    private let router: DetailViewRouterProtocol
    private let response: Response
    init(
        view: DetailViewProtocol,
        router: DetailViewRouterProtocol,
        response: Response
    ) {
        self.view = view
        self.router = router
        self.response = response
    }
}


extension DetailViewPresenter: DetailViewPresenterProtocol {
    func load() {
        view.updateView(response: response)
    }

    func moreInfo() {
        router.navigateToWeb(with: "http://www.koeri.boun.edu.tr/scripts/lst5.asp")
    }
}
