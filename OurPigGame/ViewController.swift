//
//  ViewController.swift
//  OurPigGame
//
//  Created by Mishra, Snigdha on 9/27/19.
//  Copyright © 2019 Frisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dice: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var rollDice: UIButton!
    
    var player1Score = 0
    var player2Score = 0
    var player1Points = 0
    var player2Points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func diceRolled(_ sender: Any) {
        let min : UInt32 = 1
        let max : UInt32 = 7
        let diceRolledNumber = arc4random_uniform(max - min)+min
        label.text = String("Rolled a \(diceRolledNumber)")
        switch diceRolledNumber{
        case 1: dice.image = UIImage(named: "diceSide1")
        case 2: dice.image = UIImage(named: "diceSide2")
        case 3: dice.image = UIImage(named: "diceSide3")
        case 4: dice.image = UIImage(named: "diceSide4")
        case 5: dice.image = UIImage(named: "diceSide5")
        case 6: dice.image = UIImage(named: "diceSide6")
        default: dice.image = UIImage(named: "diceSide1")
            
        let continueGame = (player1Score<24)&&(player2Score<24)
        while continueGame{
            
            }
        }
    }
    
    
}

