//
//  Movie.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 23.12.24.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let rating: Double
    let releaseDate: String
}
