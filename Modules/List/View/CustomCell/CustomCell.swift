//
//  CustomCell.swift
//  TestTask
//
//  Created by Mac on 11/17/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(with note: Note) {
        nameLabel.text = note.getFirstLine()
    }
    
    override func awakeFromNib() {
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: (0/255.0), green: (122/255.0), blue: (255/255.0), alpha: 1.0)
        selectedBackgroundView = backgroundView
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            nameLabel.textColor = UIColor.white
        } else {
            nameLabel.textColor = UIColor.black
        }
    }
}
