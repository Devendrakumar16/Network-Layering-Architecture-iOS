//
//  Networkable.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import Foundation

protocol Networkable {
    func request<T: Decodable>(_ request: APIRequest) async throws -> T
}
