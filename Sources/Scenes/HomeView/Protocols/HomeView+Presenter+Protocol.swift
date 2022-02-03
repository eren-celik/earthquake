//
//  HomeView+Presenter+Protocol.swift
//  earthquake
//
//  Created by Eren  Çelik on 3.02.2022.
//

import Foundation
import struct NetworkModule.Response

protocol HomeViewPresenterProtocol: class {
    func load(date: String?, limit: Int?)
    func selectQuake(at index: Int)
}

enum HomeViewPresenterOutput {
    case updateTitle(String)
    case setLoading(Bool)
    case showQuakes([Response])
}
