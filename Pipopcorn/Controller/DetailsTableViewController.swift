//
//  DetailsTableViewController.swift
//  Pipopcorn
//
//  Created by Lucas Fernandez Nicolau on 26/03/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var imdbRatingLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
