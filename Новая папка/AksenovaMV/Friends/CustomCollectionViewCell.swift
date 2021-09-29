//
//  CustomCollectionViewCell.swift
//  AksenovaMV
//
//  Created by Klepa on 13.05.2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
        
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var commentButton: UIButton!
    
    var saveImage: UIImage?
    
    var isLiked = false
    
    func clearCell() {
        myImage.image = nil
        saveImage = nil
        myImage.isUserInteractionEnabled = true
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        clearCell()
        
        
        
    }
    
    
    override func prepareForReuse() {
        clearCell()
    }
    
    
    func configure(image: UIImage) {
        myImage.image = image
        likeButton.tintColor = .black
        countLabel.textColor = .gray
}
}
