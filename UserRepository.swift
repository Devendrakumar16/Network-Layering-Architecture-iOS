//
//  UserRepository.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import Foundation
import Combine

final class UserRepository:
    UserRepositoryProtocol {

    private let service:
        UserServiceProtocol

    init(
        service: UserServiceProtocol
    ) {
        self.service = service
    }

    func getUsers()
    async throws -> [User] {

        try await service.fetchUsers()
    }
}

