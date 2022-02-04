//
//  DetailView+Builder.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit
import struct NetworkModule.Response

final class DetailViewBuilder {
    
    static func make(with response: Response) -> DetailViewController {
        let sb = UIStoryboard(name: "DetailView", bundle: nil)
        let view = sb.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        let router = DetailViewRouter(view: view)
        let presenter = DetailViewPresenter(view: view,
                                            router: router,
                                            response: response)
        view.presenter = presenter
        return view
    }
}
