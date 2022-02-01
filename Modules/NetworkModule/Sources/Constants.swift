//
//  Constants.swift
//  NetworkModule
//
//  Created by Eren  Çelik on 30.01.2022.
//

import Foundation

public struct NetworkConstants {
    
    static let baseURL: URL = URL(string: "https://api.orhanaydogdu.com.tr/")!
    
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    enum ContentType: String {
        case json = "application/json"
    }
    
    enum NetworkError : Error {
        case invalidResponse
        case decodingError
        case responseError
        case urlError
        case unknown
        
        var localizedDescription: String{
            switch self{
            case .invalidResponse:
                return "Invalid Response"
            case .decodingError:
                return "Decoding Error an Occured"
            case .responseError:
                return "Response Error an Occured"
            case .unknown:
                return "Unknown Error"
            case .urlError:
                return "URL Error"
            }
        }
    }
}
