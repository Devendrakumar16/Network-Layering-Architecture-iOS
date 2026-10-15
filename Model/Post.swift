//
//  Post.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//



import Foundation

struct Post: Codable, Identifiable {
    let userId: Int?
    let id: Int?
    let title: String?
    let body: String?
}

