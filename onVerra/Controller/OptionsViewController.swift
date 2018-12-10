//
//  OptionsViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 10/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {


    @IBOutlet weak var label: UILabel!
    var a:String = " no"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = a
       
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
