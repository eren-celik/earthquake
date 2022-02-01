//
//  Network+Manager.swift
//  NetworkModule
//
//  Created by Eren  Çelik on 29.01.2022.
//

import Foundation
import Moya

public final class NetworkManager: NetworkLayerProtocol {
    
    internal var provider = MoyaProvider<AppAPI>()
    
    public init() {}
    
    public func getEartquakes(limit: Int, date: String?, completion: @escaping (Swift.Result<EarthquakeModel, Error>) -> ()) {
        request(target: .quakesWithLimit(date: date ?? "", limit: limit), completion: completion)
    }
}

//MARK: NetworkRequestProtocol
extension NetworkManager: NetworkRequestProtocol {
    
    internal func request<T: Decodable>(target: AppAPI, completion: @escaping (Swift.Result<T, Error>) -> ()) {
        provider.request(target) { result in
            switch result {
            case .success(let response):
                if response.statusCode >= 200 && response.statusCode <= 300 {
                    do {
                        let results = try JSONDecoder().decode(T.self, from: response.data)
                        completion(.success(results))
                    } catch let error {
                        completion(.failure(error))
                    }
                }else {
                    let error = NSError(domain:"io.erencelik.networkManager", code:0, userInfo:[NSLocalizedDescriptionKey: "Network Error"])
                    completion(.failure(error))
                }
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
}

//MARK: Helper Functions
extension NetworkManager {
    
    private func getTodayDate() -> String {
        let todayDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy,MM,dd"
        return formatter.string(from: todayDate)
    }
}
