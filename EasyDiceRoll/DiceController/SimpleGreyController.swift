//
//  SimpleGreyController.swift
//  EasyDiceRoll
//
//  Created by Владислав on 23.11.2020.
//

import UIKit

class SimpleGreyController: UIViewController {
    
    let diceGreyImageSide = ["grey1", "grey2", "grey3", "grey4", "grey5", "grey6"]
    
    
    @IBOutlet weak var dice1: SpesilCustomImage!
    @IBOutlet weak var dice2: SpesilCustomImage!
    @IBOutlet weak var shadowView1: SpecialUIView!
    @IBOutlet weak var shadowView2: SpecialUIView!
    @IBOutlet weak var rollButton: SpecialButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dice1.image = UIImage(named: "grey1")
        dice2.image = UIImage(named: "grey6")
    }
    
    @IBAction func pressRollButton(_sender: Any) {
        dice1.image = UIImage(named: diceGreyImageSide[Int(arc4random_uniform(6))])
        dice2.image = UIImage(named: diceGreyImageSide[Int(arc4random_uniform(6))])
    }
}
