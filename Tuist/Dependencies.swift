//
//  Dependencies.swift
//  MyAppManifests
//
//  Created by Eren  Çelik on 26.01.2022.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(url: "https://github.com/Alamofire/Alamofire",
                requirement: .upToNextMajor(from: "5.0.0")),
    ],
    platforms: [.iOS]
)
