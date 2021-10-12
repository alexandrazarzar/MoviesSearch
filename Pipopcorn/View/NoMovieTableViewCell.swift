//
//  NoMovieTableViewCell.swift
//  Pipopcorn
//
//  Created by Lucas Fernandez Nicolau on 25/03/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

class NoMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var warningLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.isUserInteractionEnabled = false
        warningLabel.text = "Escreva o nome de algum filme (em inglês) na barra de busca e clique na lupa para pesquisar :D"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
