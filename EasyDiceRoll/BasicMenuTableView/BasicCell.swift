//
//  BasicCell.swift
//  EasyDiceRoll
//
//  Created by Владислав on 22.11.2020.
//

import UIKit

  class BasicCell: UITableViewCell {
    
    @IBOutlet weak var diceNameText: UILabel!
    @IBOutlet weak var dicePictureIcon: SpesilCustomImage!
    @IBOutlet weak var specialDesighnPicture: SpecialUIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
