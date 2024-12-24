//
//  BannerView.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 23.12.24.
//

import SwiftUI
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
        VStack(alignment: .leading, spacing: .zero) {
            posterImage
            footer
        }
        .background(Color.surfaceVariant)
        .clipShape(RoundedRectangle(cornerRadius: BaseDimension.times(2)))
    }
    
    private var posterImage: some View {
        Image(movie.imageName)
            .resizable()
            .aspectRatio(CGSize(width: 1280, height: 1920),
                         contentMode: .fill)
    }
    
    private var footer: some View {
        VStack(alignment: .leading, spacing: BaseDimension.times(1)) {
            rating
            Text(movie.title)
                .lineLimit(1)
                .font(.body)
                .foregroundColor(Color.onSurface)
        }
        .padding(BaseDimension.times(1))
    }
    
    private var rating: some View {
        HStack(spacing: BaseDimension.times(1)) {
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(Color.rating)
                .frame(width: BaseDimension.times(2),
                       height: BaseDimension.times(2))
            Text(String(format: "%.1f", movie.rating))
                .font(.callout)
                .foregroundColor(Color.onSurface)
        }
    }
}

#Preview {
    BannerView(movie: Movie.mock(),
               action: {})
}
