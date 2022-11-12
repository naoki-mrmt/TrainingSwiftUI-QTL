//
//  Request.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import Foundation

protocol Request {
    // MARK: - Properties
    var baseURL: URL { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

// MARK: - extension
extension Request {
    // MARK: - Methods
    func createURLRequest() -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        components?.queryItems = queryItems
        var urlRequest = URLRequest(url: url)
        urlRequest.url = components?.url
        return urlRequest
    }
}
