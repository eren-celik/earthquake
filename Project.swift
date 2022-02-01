//
//  Project.swift
//
//  Created by Eren  Çelik on 29.01.2022.
//


import ProjectDescription
import ProjectDescriptionHelpers

let target = Target(
    name: "earthquake",
    platform: .iOS,
    product: .app,
    bundleId: "ios.erencelik.earthquake",
    
    infoPlist: .extendingDefault(with: [
        "CFBundleShortVersionString": "1.0",
        "CFBundleVersion": "1",
        "UIMainStoryboardFile": "",
        "UILaunchStoryboardName": "LaunchScreen"
    ]),
    sources: "Sources/**",
    resources: [
        "Resources/*.xcassets",
        "Resources/LaunchScreen.storyboard"
    ],
    dependencies: [
        networkModule
    ]
)

let project = Project(
    name: "earthquake",
    targets: [
        target
    ]
)
