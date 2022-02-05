//
//  DetailView+Builder.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit
import struct NetworkModule.Response
// swiftlint:disable force_cast
final class DetailViewBuilder {
    static func make(with response: Response) -> DetailViewController {
        let storyBoard = UIStoryboard(name: "DetailView", bundle: nil)
        let view = storyBoard.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        let router = DetailViewRouter(view: view)
        let presenter = DetailViewPresenter(
            view: view,
            router: router,
            response: response
        )
        view.presenter = presenter
        return view
    }
}
