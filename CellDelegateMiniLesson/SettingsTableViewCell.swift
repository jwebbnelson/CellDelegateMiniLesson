//
//  SettingsTableViewCell.swift
//  CellDelegateMiniLesson
//
//  Created by Jordan Nelson on 2/12/16.
//  Copyright © 2016 Jordan Nelson. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    weak var delegate: SettingsCellDelegate?
    
    @IBOutlet weak var settingImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var isSetSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func switchTapped(sender: AnyObject) {
        delegate?.settingsCellSwitchTapped(self)
    }

}

protocol SettingsCellDelegate: class {
    func settingsCellSwitchTapped(sender: SettingsTableViewCell)
}

extension SettingsTableViewCell {
    
    // Updating Cell's UI according to the setting
    func updateCellWithSettings(setting: Setting) {
        if let image = setting.image {
            settingImage.image = image
        }
        
        nameLabel.text = setting.name
        isSetSwitch.on = setting.isSet
        
        if setting.isSet {
            self.backgroundColor = UIColor.whiteColor()
        } else {
            self.backgroundColor = UIColor.lightGrayColor()
        }
    }
}








