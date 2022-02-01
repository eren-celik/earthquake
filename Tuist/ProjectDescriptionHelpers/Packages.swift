//
//  Packages.swift
//  MyAppManifests
//
//  Created by Eren  Çelik on 26.01.2022.
//

import ProjectDescription

public extension Package {
    
    static var alamofire: Self {
        .remote(url: "https://github.com/Alamofire/Alamofire",
                requirement: .upToNextMajor(from: "5.0.0"))
    }
    
    static var moya: Self {
        .remote(url: "https://github.com/Moya/Moya",
                requirement: .upToNextMajor(from: "15.0.0"))
    }
}
