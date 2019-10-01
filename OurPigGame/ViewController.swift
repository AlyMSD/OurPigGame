//
//  ViewController.swift
//  OurPigGame
//
//  Created by Mishra, Snigdha on 9/27/19.
//  Copyright © 2019 Frisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var stopRoll: UIButton!
    @IBOutlet weak var player2Score: UILabel!
    
    @IBOutlet weak var label: UILabel!
    var player1 = 0
    var player2 = 0
    let winScore = 24
    var playerTurn = true
    @IBOutlet weak var rollDice: UIButton!
    
    var player1Score = 0
    var player2Score = 0
    var player1Points = 0
    var player2Points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func endTurn(_ sender: Any) {
        playerTurn = !playerTurn
    }
    @IBAction func diceRolled(_ sender: Any) {
        let min : UInt32 = 1
        let max : UInt32 = 7
        var player1Temp = 0
        var player2Temp = 0
        
        while playerTurn == true {
            let randomNumber1 = Int(arc4random_uniform(max - min)+min)
            label.text = String("Rolled a \(randomNumber1)")
            player1Temp = player1Temp + randomNumber1
            if randomNumber1 == 1 {
                player1Temp = 0
            }
            player1 += player1Temp
            player1Score.text = String("Player 1: \(player1)")
            playerTurn = false
        }
        while playerTurn == false {
            let randomNumber2 = Int(arc4random_uniform(max - min)+min)
            label.text = String("Rolled a \(randomNumber2)")
            player2Temp = player2Temp + randomNumber2
            if randomNumber2 == 1 {
                player2Temp = 0
            }
            player2 += player1Temp
            player2Score.text = String("Player 2: \(player2)")
            playerTurn = true
        }
        
    }
    
    
}

