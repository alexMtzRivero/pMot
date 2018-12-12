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
    var level: Int = 1
    var mode:String = String( )
    var category:String = String( )
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let secondController = segue.destination as! GameViewController
        secondController.category = self.category
        secondController.langue = self.langue
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
