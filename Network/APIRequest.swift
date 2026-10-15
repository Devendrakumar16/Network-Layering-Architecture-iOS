//
//  APIRequest.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import Foundation

struct APIRequest {
    let endpoint: APIEndpoints
    let method: HTTPMethods
    let body: Data?
    let headers: [String: String]

    init(
        endpoint: APIEndpoints,
        method: HTTPMethods = .get,
        body: Data? = nil,
        headers: [String: String] = [:]
    ) {
        self.endpoint = endpoint
        self.method = method
        self.body = body
        self.headers = headers
    }
}
