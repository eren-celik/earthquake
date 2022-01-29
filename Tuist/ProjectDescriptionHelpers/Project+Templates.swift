//
//  Project+Templates.swift
//  ProjectDescriptionHelpers
//
//  Created by Eren  Çelik on 26.01.2022.
//

import ProjectDescription

public extension Project {
    
    static func module(name: String,
                       dependencies: [TargetDependency] = [],
                       hasResources: Bool = false,
                       packages: [Package] = []) -> Self {
        
        let target  = Target(name: name,
                             platform: .iOS,
                             product: .staticFramework,
                             bundleId: "ios.erencelik.\(name)",
                             deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
                             infoPlist: .default,
                             sources: "Sources/**",
                             resources: hasResources ? "Sources/**": nil,
                             dependencies: dependencies)
        
        return Project(name: name,
                       packages: packages,
                       targets: [
                        target
                       ])
        
    }
    
}
