//
//  ViewController.swift
//  OurPigGame
//
//  Created by Mishra, Snigdha on 9/27/19.
//  Copyright © 2019 Frisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var player1 = 0
    var player2 = 0
    
    @IBOutlet weak var rollDice: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func diceRolled(_ sender: Any) {
        let min : UInt32 = 1
        let max : UInt32 = 7
        let randomNumber = arc4random_uniform(max - min)+min
        label.text = String("Rolled a \(randomNumber)")
    }
    
}

