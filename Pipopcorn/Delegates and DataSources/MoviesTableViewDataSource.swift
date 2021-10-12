//
//  MoviesTableViewDataSource.swift
//  Pipopcorn
//
//  Created by Lucas Fernandez Nicolau on 27/03/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

extension MoviesViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movies.count > 0 ? movies.count : 1
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if movies.isEmpty {
      return tableView.dequeueReusableCell(withIdentifier: CellID.NO_MOVIE_CELL) as! NoMovieTableViewCell
    }

    if let cell = tableView.dequeueReusableCell(withIdentifier: CellID.MOVIE_CELL) as? MovieTableViewCell {
        let movie = movies[indexPath.row]
        cell.nameLabel.text = movie.title
        cell.yearLabel.text = movie.year
        cell.posterImageView.load(url: movie.poster)
      
        return cell
    }

    return UITableViewCell()
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UIScreen.main.bounds.height * 0.7
  }
}
