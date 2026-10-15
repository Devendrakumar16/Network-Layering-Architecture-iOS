//
//  Untitled.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import Foundation
import Combine

@MainActor
final class ViewModel: ObservableObject {

    @Published var users: [User] = []
    @Published var posts: [Post] = []
    @Published var errorMessage = ""

    private let service: UserServiceProtocol

    init(service: UserServiceProtocol = UserService()) {
        self.service = service
    }

    func loadUsers() async {
        do {
            users = try await service.fetchUsers()
        } catch {
            errorMessage = error.localizedDescription
            print("❌ \(error)")
        }
    }
    
    func loadPosts() async {
        do{
            posts = try await service.fetchPosts()
        }catch{
            errorMessage = error.localizedDescription
            print("❌ \(error)")
        }
    }
    
}
