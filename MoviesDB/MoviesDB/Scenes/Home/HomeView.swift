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
        BannerSection(title: "Trending Movies",
                      movies: [Movie(imageName: "Pantheon",
                                     title: "Pantehon",
                                     rating: 0.79,
                                     releaseDate: "01 September 2022")])
    }
}

#Preview {
    HomeView()
}
