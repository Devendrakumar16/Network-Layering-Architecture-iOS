//
//  ContentView.swift
//  Network Layering
//
//  Created by Devendra Kumar on 15/06/26.
//

import SwiftUI
import CoreData

import SwiftUI

struct ContentView: View {

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)

                    Text("ID: \(user.id)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Users")
        }
        .task {
            await viewModel.loadUsers()
        }
    }
}



#Preview {
    ContentView()
}
