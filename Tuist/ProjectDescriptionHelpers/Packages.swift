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
}
