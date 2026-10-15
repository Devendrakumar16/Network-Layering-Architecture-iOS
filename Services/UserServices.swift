//
//  User.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//
import Foundation

final class UserService: UserServiceProtocol {

    private let network: Networkable

    init(network: Networkable = NetworkManager()) {
        self.network = network
    }

    func fetchUsers() async throws -> [User] {
        let request = APIRequest(endpoint: .users)

        let users: [User] = try await network.request(request)
        return users
    }

    func fetchPosts() async throws -> [Post] {
        let request = APIRequest(endpoint: .posts)

        let posts: [Post] = try await network.request(request)
        return posts
    }
}
