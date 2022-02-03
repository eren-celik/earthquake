//
//  DetailView+Builder.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import UIKit
import struct NetworkModule.Response
final class DetailViewBuilder {
    
    static func make(_ with: Response) -> DetailViewController {
        let sb = UIStoryboard(name: "DetailView", bundle: nil)
        let view = sb.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        return view
    }
}
