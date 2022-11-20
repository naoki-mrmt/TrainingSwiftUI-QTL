//
//  ConnpassAPI.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import Foundation

struct ConnpassAPI: Request {
    var baseURL: URL {
        // swiftlint:disable force_unwrapping
        URL(string: URLPlistManager.getConnpassAPIValue("BaseURL"))!
        // swiftlint:enable force_unwrapping
    }

    var path: String {
        URLPlistManager.getConnpassAPIValue("EvantAPIPath")
    }

    var queryItems: [URLQueryItem] {
        [
            URLQueryItem(name: "keyword", value: "Swift")
        ]
    }
}
