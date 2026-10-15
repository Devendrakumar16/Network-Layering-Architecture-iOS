//
//  NetworkError.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

enum NetworkError: Error{
    case invalidURL
    case invalidResponse
    case decodingFailed
    case serverError(Int)
}
