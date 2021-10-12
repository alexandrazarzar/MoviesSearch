//
//  Enums.swift
//  Pipopcorn
//
//  Created by Lucas Fernandez Nicolau on 25/03/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

let ENDPOINT = "https://www.omdbapi.com/?apikey"

class CellID {
    static let MOVIE_CELL = "MovieCell"
    static let NO_MOVIE_CELL = "NoMovieCell"
}

class Size {
    static let MOVIE_CELL_H: CGFloat = 210
}

class Segue {
    static let GO_TO_DETAILS = "GoToDetails"
}

class Alert {
    static let TITLE = "OMDb API"
    static let MESSAGE = "Todos os dados utilizados neste app foram consumidos utilizando a OMDb API"
    static let CANCEL_ACTION = "Cancelar"
    static let LICENSE_ACTION = "Licença da API"
}
