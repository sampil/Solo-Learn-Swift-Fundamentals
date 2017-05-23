//
//  ItemTableViewCell.swift
//  SoloLearn
//
//  Created by Семен Пилюков on 13.03.17.
//  Copyright © 2017 Семен Пилюков. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
