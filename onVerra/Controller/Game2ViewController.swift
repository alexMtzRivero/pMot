//
//  Game2ViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 12/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class Game2ViewController: UIViewController {
    var langue:String = String( )
    var langueLearn :String = String( )
    var level: Int = 1
    var mode:String = String( )
    var category:String = String( )
    var sessionControler = SesionController()
    var game:Game!
    var cIndex: Int = 0
    var bOptions:[UIButton] = [ ]
    @IBOutlet weak var worldLabel: UILabel!
    
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game(Words: sessionControler.loadCategory(category: translateToEnglish(category: self.category)))
        // Do any additional setup after loading the view.
        bOptions.append(option1)
        bOptions.append(option2)
        bOptions.append(option3)
        bOptions.append(option4)
        
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
        else{
            worldLabel.textColor = UIColor.black
            worldLabel.text = "\(game.points)/\(game.allOptions.count)"
            for b in bOptions{
                b.isEnabled = false
                
            }
        }
    }
    
    
    
    
    @IBAction func nextBClicked(_ sender: Any) {
        let button :UIButton = sender as! UIButton
        let answer = button.titleLabel!.text
        if answer == game.currentWorld.getlang(lang: langueLearn){
            worldLabel.textColor = UIColor.green
        }
        else{
            worldLabel.textColor = UIColor.red
            game.points += 1
        }
        setNewWord()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

}
