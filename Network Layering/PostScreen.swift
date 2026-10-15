//
//  ContentView 2.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import SwiftUI
struct PostScreen: View {

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.posts) { post in
                VStack(alignment: .leading, spacing: 8) {

                    Text(post.title ?? "")
                        .font(.headline)
                        .lineLimit(2)

                    Text(post.body ?? "")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .lineLimit(3)

                    HStack {
                        Text("Post ID: \(post.id ?? 0)")
                        Spacer()
                        Text("User ID: \(post.userId ?? 0)")
                    }
                    .font(.caption)
                    .foregroundStyle(.gray)
                }
                .padding(.vertical, 8)
            }
            .navigationTitle("Posts")
            .overlay {
                if viewModel.posts.isEmpty {
                    ProgressView("Loading...")
                }
            }
        }
        .task {
            await viewModel.loadPosts()
        }
    }
}

#Preview {
    ContentView()
}
