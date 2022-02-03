//
//  AppContainer.swift
//  earthquake
//
//  Created by Eren  Çelik on 2.02.2022.
//
import Foundation
import NetworkModule

let app = AppContainer()

final class AppContainer {
    let router = AppRouter()
    let network = NetworkManager()
}

