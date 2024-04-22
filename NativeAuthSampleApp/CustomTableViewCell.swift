//
//  CustomTableViewCell.swift
//  NativeAuthSampleApp
//
//  Created by yoelhor on 17/04/2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var value: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
