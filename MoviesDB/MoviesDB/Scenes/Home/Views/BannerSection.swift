//
//  BannerSection.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 24.12.24.
//

import SwiftUI

struct BannerSection: View {
    let title: String
    let movies: [Movie]
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title2)
                .foregroundStyle(Color.onSurface)
            LazyHStack {
                ForEach(movies) { movie in
                    BannerView(movie: movie, action: {})
                }
            }
        }
    }
}

#Preview {
    BannerSection(title: "Trending",
                  movies: [Movie(imageName: "Pantheon",
                                 title: "Pantehon",
                                 rating: 0.79,
                                 releaseDate: "01 September 2022")])
}
