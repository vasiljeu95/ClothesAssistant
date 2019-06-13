//
//  ButtonCell.swift
//  ClothesAssistant
//
//  Created by Stepan Vasiljeu on 1/9/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class ButtonCell: UITableViewCell {

    var tapAction: ((UITableViewCell) -> Void)?
    

    @IBOutlet weak var placesLabelLoc: UILabel!
    @IBAction func buttonLocation(sender: AnyObject) {
        tapAction?(self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
