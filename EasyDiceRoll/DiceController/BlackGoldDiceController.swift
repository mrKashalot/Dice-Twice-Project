//
//  ViewController.swift
//  EasyDiceRoll
//
//  Created by Владислав on 18.11.2020.
//

import UIKit

class BlackGoldDiceController: UIViewController {
    
    let diceImagesSide = ["1", "2", "3", "4", "5", "6"]
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var shadowView1: SpecialUIView!
    @IBOutlet weak var shadowView2: SpecialUIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dice1.image = UIImage(named: "1")
        dice2.image = UIImage(named: "6")
        
    }
    
    @IBAction func rollButtonPress(_ sender: Any) {
        dice1.image = UIImage(named: diceImagesSide[Int(arc4random_uniform(6))])
        dice2.image = UIImage(named: diceImagesSide[Int(arc4random_uniform(6))])
    }
}

