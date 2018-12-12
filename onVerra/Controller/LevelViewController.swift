//
//  LevelViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 11/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {

    var langue:String = String( )
    var langueLearn :String = String( )
    var level: Int = 1
    var mode:String = String( )
    var category:String = String( )
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        
        switch segue.identifier {
        case "level1":
            let secondController = segue.destination as! Game1ViewController
            secondController.category = self.category
            secondController.langue = self.langue
            secondController.langueLearn = self.langueLearn
        case "level2":
            let secondController = segue.destination as! Game2ViewController
            secondController.category = self.category
            secondController.langue = self.langue
            secondController.langueLearn = self.langueLearn
        case "level3":
            let secondController = segue.destination as! Game3ViewController
            secondController.category = self.category
            secondController.langue = self.langue
            secondController.langueLearn = self.langueLearn
        default:
            let secondController = segue.destination as! Game1ViewController
            secondController.category = self.category
            secondController.langue = self.langue
            secondController.langueLearn = self.langueLearn
        }
       
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
