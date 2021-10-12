//
//  Movie.swift
//  Pipopcorn
//
//  Created by Alexandra Zarzar on 12/10/21.
//  Copyright © 2021 Lucas Fernandez Nicolau. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let imdbID, title, year, poster: String
    let type: TypeEnum

    enum CodingKeys: String, CodingKey {
        case imdbID
        case title = "Title"
        case year = "Year"
        case type = "Type"
        case poster = "Poster"
    }
}

enum TypeEnum: String, Codable {
    case movie = "movie"
}
