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
}
