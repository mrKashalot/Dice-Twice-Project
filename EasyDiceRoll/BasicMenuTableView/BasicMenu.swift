//
//  ViewController.swift
//  EasyDiceRoll
//
//  Created by Владислав on 22.11.2020.
//

import UIKit

class DiceCategory: NSObject{
    var diceName: String!
    var dicePicture: String!
    
    convenience init(diceName: String, dicePicture: String) {
        
        self.init()
        self.diceName = diceName
        self.dicePicture = dicePicture
    }
    
    func getImage() -> UIImage? {
        return UIImage(named: self.dicePicture)
    }
}

class BasicMenu: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var diceListView: UITableView!
    
    var diceMenuArray = [DiceCategory]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setClearNavigation()
        
        diceListView.backgroundColor = UIColor.clear
        
        diceMenuArray += [
            DiceCategory(diceName: "BlackGold", dicePicture: "2"),
            DiceCategory(diceName: "Red Bisquit", dicePicture: "redBisquit4"),
            DiceCategory(diceName: "Simple Grey", dicePicture: "grey5"),
            DiceCategory(diceName: "Heavy Zero", dicePicture: "metal6"),
            DiceCategory(diceName: "Gliter White", dicePicture: "white3"),
            DiceCategory(diceName: "Lovely Meassage", dicePicture: "heart1"),
        ]
        
        diceListView.dataSource = self
        diceListView.delegate = self
    }
    
    func setClearNavigation() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .white
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diceMenuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "diceCell") as! BasicCell
        
        let diceIcon: DiceCategory = self.diceMenuArray[indexPath.row]
        
        cell.diceNameText.text = diceIcon.diceName
        cell.dicePictureIcon.image = diceIcon.getImage()
        cell.backgroundColor = UIColor.clear
     
        return cell
    }
    
    func travelToPersonalVC(from indexPath: IndexPath) {
        switch indexPath {
        case [0, 0]:
            performSegue(withIdentifier: "0", sender: nil)
        case [0, 1]:
            performSegue(withIdentifier: "1", sender: nil)
        default:
            break
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        travelToPersonalVC(from: indexPath)
    }
}
