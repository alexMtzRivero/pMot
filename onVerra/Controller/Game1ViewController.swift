//
//  GameViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 07/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class Game1ViewController: UIViewController {
//language that the user knows
    var langue:String = String( )
    // i want to learn this lenguage
    var langueLearn :String = String( )
    
    var category:String = String( )
    var sessionControler = SesionController()
    var game:Game!
    var cIndex: Int = 0
    var bOptions:[UIButton] = [ ]

    @IBOutlet weak var worldLabel: UILabel!
 

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // loads a new game of the selected category translated to english because the keys of the categories are in english
        game = Game(Words: sessionControler.loadCategory(category: translateToEnglish(category: self.category)))
        
        // sets the buttons to an array to search later
        bOptions.append(option1)
        bOptions.append(option2)
      
        setNewWord()
        
    }
    func translateToEnglish(category:String)->String{
       var i = 0
        if(langue == "fr"){
            i = 0
        }
        if(langue == "es"){
           i = 1
        }
        if category != "en"{
            for (key,value) in Categories().categories{
                if value[i] == category{
                    return key
                }
            }
        }
        return category
    }
    func setNewWord( ){
        let word = game.newWord()
        // if there is a new word continue the game
        if word != nil {
            // sets all options to random words from category
            for b in bOptions{
                b.setTitle(game.gerRandomOption().getlang(lang: langueLearn), for: .normal)
            }
            // puts the rhight answer in a random button
            let number = Int(arc4random_uniform(UInt32(bOptions.count)))
            bOptions[number].setTitle(word?.getlang(lang: langueLearn), for: .normal)
            //shows the new word
            worldLabel.text = word?.getlang(lang: langue)
        }
        // if not , the game is over and you show the  score
        else{
             worldLabel.textColor = UIColor.black
            worldLabel.text = "\(game.points)/\(game.allOptions.count)"
            for b in bOptions{
                b.isEnabled = false

            }
        }
    }
    // sends data to othes controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "back" {
            let secondController = segue.destination as! LevelViewController
            secondController.category = self.category
            secondController.langueLearn = self.langueLearn
            secondController.langue = self.langue
        }
        
    }
  
  
    // compares the users answer to the real answer and calls the next word
    @IBAction func nextBClicked(_ sender: Any) {
        let button :UIButton = sender as! UIButton
        let answer = button.titleLabel!.text
        if answer == game.currentWorld.getlang(lang: langueLearn){
            worldLabel.textColor = UIColor.green
            game.points += 1
        }
        else{
             worldLabel.textColor = UIColor.red
        }
        setNewWord()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    

    

}
