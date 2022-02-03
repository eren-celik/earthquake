//
//  AllModules.swift
//  ProjectDescriptionHelpers
//
//  Created by Eren  Çelik on 29.01.2022.
//

import ProjectDescription


//MARK: - SPM Packages

public let alamofire = TargetDependency.package(product: "Alamofire")
public let moya = TargetDependency.package(product: "Moya")
public let progressHUD = TargetDependency.package(product: "JGProgressHUD")

//MARK: - Targets

public let networkModule = TargetDependency.project(target: "NetworkModule",
                                                    path: .relativeToRoot("Modules/NetworkModule"))

