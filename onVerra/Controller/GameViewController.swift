//
//  GameViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 07/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var langue:String = String( )
    var level: Int = 1
    var mode:String = String( )
    var category:String = String( )
    var sessionControler = SesionController()
    var game:Game!
    var cIndex: Int = 0

    @IBOutlet weak var worldLabel: UILabel!
 

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
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
            worldLabel.text = word?.fr
        }
        else{
            worldLabel.text = "se acabo"
        }
    }
    
  
  
    
    @IBAction func nextBClicked(_ sender: Any) {
        setNewWord()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
