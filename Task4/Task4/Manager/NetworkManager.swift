//
//  NetworkManager.swift
//  Task4
//
//  Created by Naoki Muramoto on 2022/11/13.
//

import Foundation

class NetworkManager {
    // MARK: - Properties
    static let shared = NetworkManager()

    // MARK: - Initialize
    private init() {}

    // MARK: - Methods
    func fetch<T: Decodable>(_ request: Request, type: T.Type) async -> Result<T, Error> {
        let urlRequest = request.createURLRequest()
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let typeObjects = try JSONDecoder().decode(T.self, from: data)
            return .success(typeObjects)
        } catch {
            return .failure(error)
        }
    }
}
