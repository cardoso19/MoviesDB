//
//  HomeViewModel.swift
//  MoviesDB
//
//  Created by Matheus Kuhn on 24.12.24.
//

import SwiftUI

final class HomeViewModel {
    struct Section: Identifiable {
        let id = UUID()
        let title: String
        let movies: [Movie]
    }
    
    let sections: [Section] = [Section(title: "Trending",
                                       movies: [Movie.mock(),
                                                Movie.mock(),
                                                Movie.mock(),
                                                Movie.mock()]),
                               Section(title: "What's popular",
                                       movies: [Movie.mock(),
                                                Movie.mock(),
                                                Movie.mock(),
                                                Movie.mock()]),
                               Section(title: "Free to watch",
                                       movies: [Movie.mock(),
                                                Movie.mock(),
                                                Movie.mock(),
                                                Movie.mock()])]
//    let sections: [Section] = [Section(title: "Trending",
//                                       movies: [Movie.mock(),
//                                                Movie.mock(),
//                                                Movie.mock(),
//                                                Movie.mock()])]
}
