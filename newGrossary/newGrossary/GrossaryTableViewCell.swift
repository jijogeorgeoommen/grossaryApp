//
//  GrossaryTableViewCell.swift
//  newGrossary
//
//  Created by Jijo G Oommen on 16/04/22.
//

import UIKit

class GrossaryTableViewCell: UITableViewCell {

    @IBOutlet var lbl_grossaryItem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
