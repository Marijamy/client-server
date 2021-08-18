//
//  NewsTableViewCell.swift
//  AksenovaMV
//
//  Created by Klepa on 05.05.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var newImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clearCell()
        
        myView.layer.cornerRadius = myView.frame.size.height / 2
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 0.9
        myView.layer.shadowRadius = 10
        avatarImage.layer.cornerRadius = myView.frame.size.height / 2
        
    }
    
    func clearCell() {
        avatarImage.image = nil
        nameLabel.text = nil
        timeLabel.text = nil
        descriptionLabel.text = nil
        newImage.image = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        clearCell()
    }
    
    func configure(news: New) {
        nameLabel.text = news.name
        timeLabel.text = news.time
        descriptionLabel.text = news.description
        newImage.image = news.fotoNews
        
        if let avatar = news.avatar {
            avatarImage.image = avatar
        }
    }
    
}
