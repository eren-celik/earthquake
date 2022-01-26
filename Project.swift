import ProjectDescription

let target = Target(
    name: "earthquake",
    platform: .iOS,
    product: .app,
    bundleId: "com.erencelik.earthquake",
    
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
        .external(name: "Alamofire"),
    ]
)

let project = Project(
    name: "earthquake",
    targets: [
        target
    ]
)
