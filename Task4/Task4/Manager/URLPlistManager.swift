//
//  URLPlistManager.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import Foundation

class URLPlistManager {

    // MARK: - Properties
    private static let connpassAPIURLProperties = loadingPropertiesFile(forResource: "ConnpassAPIURL")

    // MARK: - Initialize
    private init() {}

    // MARK: - Methods
    private static func loadingPropertiesFile(forResource name: String) -> [String: Any] {
        guard let path = Bundle.main.path(forResource: name, ofType: "plist") else {
            return [:]
        }
        guard let dictionary = NSDictionary(contentsOfFile: path) as? [String: Any] else {
            return [:]
        }
        return dictionary
    }

    static func getConnpassAPIValue(_ key: String) -> String {
        connpassAPIURLProperties[key] as? String ?? ""
    }
}
