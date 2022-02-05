//
//  Network+Provider.swift
//  NetworkModule
//
//  Created by Eren  Çelik on 29.01.2022.
//

import Foundation
import Moya

enum AppAPI {
    case quakesWithLimit(date: String, limit: Int)
}

extension AppAPI: TargetType {
    var baseURL: URL {
        switch self {
        case .quakesWithLimit:
            return NetworkConstants.baseURL
        }
    }

    var path: String {
        switch self {
        case .quakesWithLimit:
            return "deprem/index.php"
        }
    }

    var method: Moya.Method {
        switch self {
        case .quakesWithLimit:
            return .get
        }
    }

    var task: Task {
        switch self {
        case let .quakesWithLimit(date, limit):
            return .requestParameters(parameters: [
                "date": date,
                "limit": limit
            ],
            encoding: URLEncoding.default)
        }
    }

    var headers: [String: String]? {
        return [NetworkConstants.HttpHeaderField.contentType.rawValue: NetworkConstants.ContentType.json.rawValue]
    }

    var sampleData: Data {
        return Data()
    }
}
