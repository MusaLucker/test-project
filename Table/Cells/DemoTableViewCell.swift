//
//  DemoTableViewCell.swift
//  Table
//
//  Created by MusaIstema on 10.09.2024.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    func configure(with text:String){
        self.nameLabel.text = text
    }
    
}
