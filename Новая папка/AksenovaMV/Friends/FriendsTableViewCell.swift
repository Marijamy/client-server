//
//  FriendsTableViewCell.swift
//  AksenovaMV
//
//  Created by Klepa on 05.05.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    var saveUser: User?
    
    func clearCell() {
        myImage.image = nil
        nameLabel.text = nil
        ageLabel.text = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        clearCell()
        
        myView.layer.cornerRadius = myView.frame.size.height / 2
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 0.9
        myView.layer.shadowRadius = 10
        myImage.layer.cornerRadius = myView.frame.size.height / 2
    }
    
    override func prepareForReuse() {
        clearCell()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configure(user: User) {
        nameLabel.text = user.name
        ageLabel.text = String(user.age) + " лет"
        
        if let avatar = user.avatar{
            myImage.image = avatar
        }
        saveUser = user
    }
}
