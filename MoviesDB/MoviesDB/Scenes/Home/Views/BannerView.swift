//
//  BannerView.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 23.12.24.
//

import SwiftUI
import UIComponents
import UIExtensions

struct BannerView: View {
    let movie: Movie
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            content
        }
    }
    
    private var content: some View {
        VStack(spacing: .zero) {
            posterImage
            footer
        }
        .background(Color.surfaceVariant)
        .clipShape(RoundedRectangle(cornerRadius: BaseDimension.times(2)))
    }
    
    private var posterImage: some View {
        Image(movie.imageName)
            .resizable()
            .frame(width: 200, height: 250)
    }
    
    private var footer: some View {
        HStack(spacing: BaseDimension.times(1)) {
            RatingView(rating: movie.rating)
            texts
        }
        .padding(BaseDimension.times(1))
    }
    
    private var texts: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text(movie.title)
                .lineLimit(2)
                .font(.headline)
                .foregroundColor(Color.onSurface)
            Text(movie.releaseDate)
                .lineLimit(1)
                .font(.caption)
                .foregroundColor(Color.onSurfaceVariant)
        }
    }
}

#Preview {
    BannerView(movie: Movie(imageName: "Pantheon",
                            title: "Pantehon",
                            rating: 0.79,
                            releaseDate: "01 September 2022"),
               action: {})
}
