//
//  RootTableViewCell.swift
//  SelfSizingTableView
//
//  Created by Marius Skalstad on 01.08.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class RootTableViewCell: UITableViewCell {
    
    @IBOutlet weak var heroesLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
