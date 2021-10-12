//
//  CircleButton.swift
//  Pipopcorn
//
//  Created by Lucas Fernandez Nicolau on 25/03/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
    }

}
