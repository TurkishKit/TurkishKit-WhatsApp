//
//  SettingsTableViewCell.swift
//  TurkishKit-WhatsApp
//
//  Created by Nadin Tamer on 25.07.2019.
//  Copyright © 2019 Nadin Tamer. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
