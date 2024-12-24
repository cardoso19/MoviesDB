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

extension Movie {
    static func mock() -> Movie {
        Movie(imageName: "Pantheon",
              title: "Pantheon",
              rating: 7.90,
              releaseDate: "01 Sep 2022")
    }
}
