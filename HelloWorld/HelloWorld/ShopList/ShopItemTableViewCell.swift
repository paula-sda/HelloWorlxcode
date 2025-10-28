//
//  ShopItemTableViewCell.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class ShopItemTableViewCell: UITableViewCell {

    @IBOutlet weak var texto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
