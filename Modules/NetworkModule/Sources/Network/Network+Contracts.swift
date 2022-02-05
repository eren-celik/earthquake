//
//  Network+Contracts.swift
//  NetworkModule
//
//  Created by Eren  Çelik on 29.01.2022.
//

import Foundation
import Moya
import Combine

protocol NetworkLayerProtocol: AnyObject {
    var provider: MoyaProvider<AppAPI> { get }

    func getEartquakes(limit: Int, date: String?, completion: @escaping (Swift.Result<EarthquakeModel, Error>) -> Void)
}

protocol NetworkRequestProtocol: AnyObject {
    func request<T: Decodable>(target: AppAPI, completion: @escaping (Result<T, Error>) -> Void)
}
