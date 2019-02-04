//
//  RoundedImageView.swift
//  Double Tap To Like
//
//  Created by Kyle Lee on 2/3/19.
//  Copyright © 2019 Kilo Loco. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        layer.cornerRadius = 10
        
        clipsToBounds = true
    }
}
