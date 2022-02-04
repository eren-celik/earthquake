//
//  DetailView+View+Protocol.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import Foundation
import struct NetworkModule.Response

protocol DetailViewProtocol: class {
    func updateView(response: Response)
}
