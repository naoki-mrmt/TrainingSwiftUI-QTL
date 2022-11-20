//
//  Event.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/12.
//

import Foundation

struct Event: Decodable, Identifiable {
    let id: Int
    let title: String
    let overview: String
    let description: String
    let eventURL: String
    let startDate: String
    let ownerID: Int
    let ownerName: String
    let place: String
    let address: String
    let lat: String?
    let lon: String?

    enum CodingKeys: String, CodingKey {
        case id = "event_id"
        case title = "title"
        case overview = "catch"
        case description = "description"
        case eventURL = "event_url"
        case startDate = "started_at"
        case ownerID = "owner_id"
        case ownerName = "owner_display_name"
        case place = "place"
        case address = "address"
        case lat = "lat"
        case lon = "lon"
    }
}
