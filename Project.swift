//
//  Project.swift
//
//  Created by Eren  Çelik on 29.01.2022.
//


import ProjectDescription
import ProjectDescriptionHelpers

let targetActions = [
    TargetScript.pre(path: "Scripts/SwiftLintRunScript.sh",
                     arguments: [],
                     name: "SwiftLint")
]

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
        "Resources/LaunchScreen.storyboard",
        "Resources/**",
        "Resources/Scenes/UI/**"
    ],
    scripts: targetActions,
    dependencies: [
        networkModule,
        progressHUD
    ]
)

let project = Project(
    name: "earthquake",
    packages: [
        .progressHUD
    ], targets: [
        target
    ]
)
