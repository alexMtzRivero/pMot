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
    var bOptions:[UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
