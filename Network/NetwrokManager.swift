//
//  NetwrokManager.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import Foundation

final class NetworkManager:Networkable {

    private let baseURL = "https://jsonplaceholder.typicode.com"

    func request<T: Decodable>(
        _ apiRequest: APIRequest
    ) async throws -> T {

        guard let url = URL(string: baseURL + apiRequest.endpoint.path) else {
            throw URLError(.badURL)
        }

        var request = URLRequest(url: url)
        request.httpMethod = apiRequest.method.rawValue
        request.httpBody = apiRequest.body

        request.setValue("application/json",
                         forHTTPHeaderField: "Content-Type")

        let (data, _) = try await URLSession.shared.data(for: request)

        // Print request body
        if let body = apiRequest.body,
           let json = String(data: body, encoding: .utf8) {
            print("📤 Body:", json)
        }

        // Print response
        if let json = String(data: data, encoding: .utf8) {
            print("📥 Response:", json)
        }

        return try JSONDecoder().decode(T.self, from: data)
    }
}
