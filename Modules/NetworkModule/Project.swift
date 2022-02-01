//
//  Project.swift
//  earthquakeManifests
//
//  Created by Eren  Çelik on 29.01.2022.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(name: "NetworkModule",
                             dependencies: [
                                alamofire,
                                moya
                             ],packages: [
                                .alamofire,
                                .moya
                             ])
