//
//  UserRepositoryProtocol.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//


protocol UserRepositoryProtocol {

    func getUsers() async throws -> [User]
}