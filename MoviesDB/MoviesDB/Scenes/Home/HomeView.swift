//
//  HomeView.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 23.12.24.
//

import SwiftUI
import UIExtensions

struct HomeView: View {
    let viewModel: HomeViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                ForEach(viewModel.sections) { section in
                    BannerSection(title: section.title,
                                  movies: section.movies)
                }
            }
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
