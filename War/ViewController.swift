//
//  ViewController.swift
//  War
//
//  Created by Timur Usmanov on 26.08.15.
//  Copyright (c) 2015 Timur Usmanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //declaring IBOutlets
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!

    
    // Creating array with card names
    var cardNamesArray:[String] = ["card1","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13"]
    
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Core of the game
    @IBAction func playRoundTapped(sender: UIButton) {
       
        // Randomizing cards:
        // Putting random number into variable
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        // Generating card name
        // Here we access to array of images's filenames through random array index
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        var secondCardString:String = self.cardNamesArray[secondRandomNumber]
        // Here we get random card name another way, by adding random number to "card" filename pattern
        // var secondCardString:String = String(format: "card%i", secondRandomNumber)
        
        
        // Loading images with random cards name
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
        
        // Determine the higher card
        if firstRandomNumber > secondRandomNumber {
            // increasing player score
            playerScoreTotal = playerScoreTotal + 1
            // output to the label
            self.playerScore.text = String(playerScoreTotal)
            println("Player: " + "\(firstRandomNumber)")
            println("Enemy: " + "\(secondRandomNumber)")
            println("Player score: " + "\(playerScoreTotal)")
            println("Enemy score: " + "\(enemyScoreTotal)")
            
        } else if firstRandomNumber == secondRandomNumber {
            println("Player: " + "\(firstRandomNumber)")
            println("Enemy: " + "\(secondRandomNumber)")
            println("Player score: " + "\(playerScoreTotal)")
            println("Enemy score: " + "\(enemyScoreTotal)")
            
        } else {
            // increaing enemy score
            enemyScoreTotal = enemyScoreTotal + 1
            // output to the label (which way is better: as above or as here?)
            self.enemyScore.text = "\(enemyScoreTotal)"
            println("Player: " + "\(firstRandomNumber)")
            println("Enemy: " + "\(secondRandomNumber)")
            println("Player score: " + "\(playerScoreTotal)")
            println("Enemy score: " + "\(enemyScoreTotal)")
        }
        
        
    }

}

