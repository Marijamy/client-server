//
//  GroupTableViewCell.swift
//  AksenovaMV
//
//  Created by Klepa on 05.05.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myGroupView: UIView!
    
    @IBOutlet weak var myImageGroup: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var saveGroup: Group?
    
    func clearCell() {
        myImageGroup.image = nil
        nameLabel.text = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        clearCell()
        
        myGroupView.layer.cornerRadius = myGroupView.frame.size.height * 1.3
        myGroupView.layer.shadowColor = UIColor.black.cgColor
        myGroupView.layer.shadowOpacity = 0.9
        myGroupView.layer.shadowRadius = 10
        myImageGroup.layer.cornerRadius = myGroupView.frame.size.height * 1.3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        clearCell()
    }
    
    func configure(group: Group) {
        nameLabel.text = group.name
        
        if let groupFoto = group.fotoGroup{
            myImageGroup.image = groupFoto
        }
        saveGroup = group
    }
    
}
