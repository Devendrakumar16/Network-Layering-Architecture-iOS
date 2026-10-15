//
//  Endpoints.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

enum APIEndpoints{
    case users
    case posts
    
    var path:String{
        switch self{
        case .users:
            return "/users"
        case .posts:
            return "/posts"
        }
    }
}
