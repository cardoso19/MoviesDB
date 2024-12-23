//
//  HomeView.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 23.12.24.
//

import SwiftUI
import UIExtensions

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Color.onSurface)
            Text("Hello, world!")
                .foregroundStyle(Color.onSurface)
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
