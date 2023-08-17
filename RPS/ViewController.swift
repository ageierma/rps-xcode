//
//  ViewController.swift
//  RPS
//
//  Created by August Geiermann on 11/7/16.
//  Copyright © 2016 August Geiermann. All rights reserved.
//
//  Rock Paper Scissors
//
//
import UIKit
class ViewController: UIViewController {
    
        var playerWins = 0
        var playerTies = 0
        var playerLosses = 0
        var aiWins = 0
        var aiLosses = 0
        var aiTies = 0
        
        @IBOutlet weak var player1ImageView: UIImageView!
        
        @IBOutlet weak var papershown: UIImageView!
        
        @IBOutlet weak var scissorsshown: UIImageView!
        @IBOutlet weak var label1: UILabel!
        @IBOutlet weak var label2: UILabel!
        @IBOutlet weak var label3: UILabel!
        @IBOutlet weak var playerchoice: UILabel!
        @IBOutlet weak var aiChoice: UILabel!
        @IBOutlet weak var computerImage: UIImageView!
        @IBOutlet weak var label4: UILabel!
        @IBOutlet weak var label5: UILabel!
        @IBOutlet weak var label6: UILabel!
        @IBOutlet weak var gameOutcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRock(_ sender: Any) {
        self.player1ImageView.image = UIImage(named: "R11 - Plant and Rocks - 0053.png")!
        self.playerchoice.text = "You chose rock!"
        let random = arc4random() % 3;
        if random == 0 {
            self.computerImage.image = UIImage(named: "R11 - Plant and Rocks - 0053.png")!
            playerTies = playerTies + 1
            self.label3.text! = "Ties: \(playerTies)"
            aiTies = aiTies + 1
            self.label6.text = "AI Ties: \(aiTies)"
            self.aiChoice.text = "AI chose rock!"
            self.gameOutcome.text = "You tied!"
            self.gameOutcome.textColor = UIColor.black
        }
        if random == 1 {
            self.computerImage.image = UIImage(named: "paper-clip-art-2.png")!
            playerLosses = playerLosses + 1
            self.label2.text! = "Losses: \(playerLosses)"
            aiWins = aiWins + 1
            self.label4.text = "AI Wins: \(aiWins)"
            self.aiChoice.text = "AI chose paper!"
            self.gameOutcome.text = "You lost!"
            self.gameOutcome.textColor = UIColor.red
        }
        if random == 2 {
            self.computerImage.image = UIImage(named: "scissors.png")!
            playerWins = playerWins + 1
            self.label1.text! = "Wins: \(playerWins)"
            aiLosses = aiLosses + 1
            self.label5.text = "AI Losses: \(aiLosses)"
            self.aiChoice.text = "AI chose scissors!"
            self.gameOutcome.text = "You won!"
            self.gameOutcome.textColor = UIColor.green
        }
        if playerWins > aiWins {
            self.label1.textColor = UIColor.green
            self.label4.textColor = UIColor.red
        }
        if playerLosses < aiLosses {
            self.label2.textColor = UIColor.green
            self.label5.textColor = UIColor.red
        }
        if playerWins < aiWins {
            self.label1.textColor = UIColor.red
            self.label4.textColor = UIColor.green
        }
        if aiLosses < playerLosses {
            self.label2.textColor = UIColor.red
            self.label5.textColor = UIColor.green
        }
    }
    
    @IBAction func btnPaper(_ sender: Any) {
        self.player1ImageView.image = UIImage(named: "paper-clip-art-2.png")!
        self.playerchoice.text = "You chose paper!"
        let random = arc4random() % 3
        if random == 0 {
            self.computerImage.image = UIImage(named: "R11 - Plant and Rocks - 0053.png")!
            playerWins = playerWins + 1
            self.label1.text! = "Wins: \(playerWins)"
            aiLosses = aiLosses + 1
            self.label5.text = "AI Losses: \(aiLosses)"
            self.aiChoice.text = "AI chose rock!"
            self.gameOutcome.text = "You won!"
            self.gameOutcome.textColor = UIColor.green
        }
        if random == 1 {
            self.computerImage.image = UIImage(named: "paper-clip-art-2.png")!
            playerTies = playerTies + 1
            self.label3.text! = "Ties: \(playerTies)"
            aiTies = aiTies + 1
            self.label6.text = "AI Ties: \(aiTies)"
            self.aiChoice.text = "AI chose paper!"
            self.gameOutcome.text = "You tied!"
            self.gameOutcome.textColor = UIColor.black
        }
        if random == 2 {
            self.computerImage.image = UIImage(named: "scissors.png")!
            playerLosses = playerLosses + 1
            self.label2.text! = "Losses: \(playerLosses)"
            aiWins = aiWins + 1
            self.label4.text = "AI Wins: \(aiWins)"
            self.aiChoice.text = "AI chose scissors!"
            self.gameOutcome.text = "You lost!"
        }
        if(playerWins > aiWins)
        {
            self.label1.textColor = UIColor.red;
            self.label4.textColor = UIColor.red;
        }
        if(playerLosses < aiLosses){
            do{
            self.label2.textColor = UIColor.green;
            self.label5.textColor = UIColor.green;
            }
        }
        if(playerWins < aiWins){
            do{
            self.label1.textColor = UIColor.red;
            self.label4.textColor = UIColor.green;
            }
        }
        if(aiLosses < playerLosses){
            do{
            self.label2.textColor = UIColor.red;
            self.label5.textColor =  UIColor.green;
            }
        }
}
@IBAction func btnScissors(_ sender: Any) {
    self.player1ImageView.image = UIImage(named: "scissors.png");
    self.playerchoice.text = "You chose scissors!";
    
    let random = arc4random() % 3;
    if(random == 0)
    {
    self.computerImage.image = UIImage(named: "R11 - Plant and Rocks - 0053.png");
    playerLosses = playerLosses + 1;
    self.label2.text = String(format: "Losses: %d", playerLosses)
    aiWins = aiWins + 1;
    self.label4.text = String(format:"AI Wins: %d", aiWins)
    self.aiChoice.text = "AI chose rock!";
    self.gameOutcome.text = "You lost!";
    self.gameOutcome.textColor = UIColor.red;
    if(random == 1)
    {
    self.computerImage.image = UIImage(named: "paper-clip-art-2.png");
    playerWins = playerWins + 1;
    self.label1.text = String(format:"Wins: %d", playerWins)
    aiLosses = aiLosses + 1;
    self.label5.text = String(format:"AI Losses: %d", aiLosses)
    self.aiChoice.text = "AI chose paper!";
    self.gameOutcome.text = "You won!";
    self.gameOutcome.textColor = UIColor.green;
    if(random == 2)
    {
    self.computerImage.image = UIImage(named:"scissors.png");
    playerTies = playerTies + 1;
    self.label3.text = String(format:"Ties: %d", playerTies)
    aiTies = aiTies + 1;
    self.label6.text = String(format:"AI Ties: %d", aiTies)
    self.aiChoice.text = "AI chose scissors!";
    self.gameOutcome.text = "You tied!";
    self.gameOutcome.textColor = UIColor.black;
    }
    if(playerWins > aiWins)
    {
    self.label1.textColor = UIColor.green;
    self.label4.textColor = UIColor.red;
    }
    if(playerLosses < aiLosses)
    {
    self.label2.textColor = UIColor.green;
    self.label5.textColor = UIColor.red;
    }
    if(playerWins < aiWins)
    {
    self.label1.textColor = UIColor.red;
    self.label4.textColor = UIColor.green;
    }
    if(aiLosses < playerLosses)
    {
    self.label2.textColor = UIColor.red;
    self.label5.textColor = UIColor.green;
    }
    
}
}
}
}
