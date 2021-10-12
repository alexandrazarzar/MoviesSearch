//
//  Search.swift
//  Pipopcorn
//
//  Created by Alexandra Zarzar on 12/10/21.
//  Copyright © 2021 Lucas Fernandez Nicolau. All rights reserved.
//

import Foundation

struct Search: Codable {
    
    let movies: [Movie]
    let response: String
    
    enum CodingKeys: String, CodingKey {
            case movies = "Search"
            case response = "Response"
        }
}
