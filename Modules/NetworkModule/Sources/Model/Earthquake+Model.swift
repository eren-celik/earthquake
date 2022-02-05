//
//  Earthquake+Model.swift
//  NetworkModule
//
//  Created by Eren  Çelik on 30.01.2022.
//

import Foundation
// swiftlint:disable redundant_string_enum_value type_name
// MARK: - EarthquakeModel
public struct EarthquakeModel: Decodable {
    public let status: Bool?
    public let desc: String?
    public let result: [Response]?

    enum CodingKeys: String, CodingKey {
        case status = "status"
        case desc = "desc"
        case result = "result"
    }

    public init(status: Bool?, desc: String?, result: [Response]?) {
        self.status = status
        self.desc = desc
        self.result = result
    }
}

// MARK: - Result

public struct Response: Codable {
    public let id: ID?
    public let mag: Double?
    public let lng: Double?
    public let lat: Double?
    public let lokasyon: String?
    public let depth: Double?
    public let coordinates: [Double]?
    public let title: String?
    public let rev: String?
    public let timestamp: Int?
    public let dateStamp: String?
    public let date: String?
    public let hash: String?
    public let hash2: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case mag = "mag"
        case lng = "lng"
        case lat = "lat"
        case lokasyon = "lokasyon"
        case depth = "depth"
        case coordinates = "coordinates"
        case title = "title"
        case rev = "rev"
        case timestamp = "timestamp"
        case dateStamp = "date_stamp"
        case date = "date"
        case hash = "hash"
        case hash2 = "hash2"
    }

    public init(
        id: ID?,
        mag: Double?,
        lng: Double?,
        lat: Double?,
        lokasyon: String?,
        depth: Double?,
        coordinates: [Double]?,
        title: String?,
        rev: String?,
        timestamp: Int?,
        dateStamp: String?,
        date: String?,
        hash: String?,
        hash2: String?
    ) {
        self.id = id
        self.mag = mag
        self.lng = lng
        self.lat = lat
        self.lokasyon = lokasyon
        self.depth = depth
        self.coordinates = coordinates
        self.title = title
        self.rev = rev
        self.timestamp = timestamp
        self.dateStamp = dateStamp
        self.date = date
        self.hash = hash
        self.hash2 = hash2
    }
}

// MARK: - ID
public struct ID: Codable {
    public let oid: String?

    enum CodingKeys: String, CodingKey {
        case oid = "$oid"
    }

    public init(oid: String?) {
        self.oid = oid
    }
}
