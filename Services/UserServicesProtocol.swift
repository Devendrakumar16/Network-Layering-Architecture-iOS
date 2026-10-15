//
//  UserServicesProtocol.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

protocol UserServiceProtocol {

    func fetchUsers() async throws -> [User]
    func fetchPosts() async throws -> [Post]
}
