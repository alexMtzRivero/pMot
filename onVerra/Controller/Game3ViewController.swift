//
//  Game3ViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 12/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class Game3ViewController: UIViewController {
    var langue:String = String( )
    var langueLearn :String = String( )
    var level: Int = 1
    var mode:String = String( )
    var category:String = String( )
    var sessionControler = SesionController()
    var game:Game!
    var cIndex: Int = 0
    @IBOutlet weak var worldLabel: UILabel!
    
    @IBOutlet weak var textImput: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var helpLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game(Words: sessionControler.loadCategory(category: translateToEnglish(category: self.category)))
        // Do any additional setup after loading the view.
        
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
            helpLabel.text = ""
            worldLabel.text = word?.getlang(lang: langue)
        }
        else{
            worldLabel.text = "se acabo"
        }
    }
    
    
    
    
    @IBAction func nextBClicked(_ sender: Any) {

        let answer = textImput.text
        if answer == game.currentWorld.getlang(lang: langueLearn){
            worldLabel.textColor = UIColor.green
            setNewWord()
        }
        else{
            worldLabel.textColor = UIColor.red
            helpLabel.text = game.currentWorld.getlang(lang: langueLearn)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    


}
