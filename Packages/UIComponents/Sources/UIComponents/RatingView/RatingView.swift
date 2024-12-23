//
//  RatingView.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 23.12.24.
//

import SwiftUI
import UIExtensions

public struct RatingView: View {
    @ObservedObject private var viewModel: RatingViewModel
    
    public var body: some View {
        Group {
            ZStack {
                Circle()
                    .stroke(viewModel.color.opacity(0.5),
                            lineWidth: BaseDimension.times(0.25))
                Circle()
                    .trim(from: 0, to: viewModel.rating)
                    .stroke(viewModel.color,
                            style: .init(lineWidth: BaseDimension.times(0.5),
                                         lineCap: .round))
                    .rotationEffect(.degrees(-90))
                HStack(spacing: .zero) {
                    Text(viewModel.text)
                        .font(.caption)
                        .bold()
                        .foregroundStyle(Color.inverseOnSurface)
                        .lineLimit(1)
                    if viewModel.hasRating {
                        Text("%")
                            .font(.caption2)
                            .foregroundStyle(Color.inverseOnSurface)
                    }
                }
            }
            .padding(BaseDimension.times(0.5))
        }
        .background(Color.container)
        .clipShape(.circle)
        .frame(width: BaseDimension.times(6),
               height: BaseDimension.times(6))
    }
    
    public init(rating: Double) {
        self.viewModel = .init(rating: rating)
    }
}

#Preview {
    VStack {
        RatingView(rating: 0.0)
        RatingView(rating: 0.25)
        RatingView(rating: 0.5)
        RatingView(rating: 0.75)
        RatingView(rating: 1)
    }
}
