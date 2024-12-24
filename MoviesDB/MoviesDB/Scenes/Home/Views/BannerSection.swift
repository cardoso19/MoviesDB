//
//  BannerSection.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 24.12.24.
//

import SwiftUI
import UIExtensions

struct BannerSection: View {
    let title: String
    let movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: BaseDimension.times(2)) {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundStyle(Color.onSurface)
                .padding(.horizontal, BaseDimension.times(2))
            ScrollView(.horizontal) {
                HStack {
                    ForEach(movies) { movie in
                        BannerView(movie: movie, action: {})
                            .frame(width: UIScreen.main.bounds.size.width / 2.5)
                    }
                }
                .padding(.horizontal, BaseDimension.times(2))
            }
        }
        .padding(.vertical, BaseDimension.times(1))
    }
}

#Preview {
    BannerSection(title: "Trending",
                  movies: [Movie.mock(),
                           Movie.mock(),
                           Movie.mock()])
}
