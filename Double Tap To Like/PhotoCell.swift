//
//  PhotoCell.swift
//  Double Tap To Like
//
//  Created by Kyle Lee on 2/3/19.
//  Copyright © 2019 Kilo Loco. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var isLikedImageView: UIImageView!
    
    @IBOutlet weak var likeImageViewWidthConstraint: NSLayoutConstraint!
    
    lazy var likeAnimator = LikeAnimator(container: contentView, layoutConstraint: likeImageViewWidthConstraint)
    
    lazy var doubleTapRecognizer: UITapGestureRecognizer = {
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didDoubleTap))
        
        tapRecognizer.numberOfTapsRequired = 2
        
        return tapRecognizer
    }()
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        photoImageView.addGestureRecognizer(doubleTapRecognizer)
    }
    
    func populate(with photo: UIImage?) {
        
        photoImageView.image = photo
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        photoImageView.image = nil
    }
    
    @objc
    func didDoubleTap() {
        
        likeAnimator.animate { [weak self] in
            
            self?.isLikedImageView.isHidden = false
        }
    }
}
