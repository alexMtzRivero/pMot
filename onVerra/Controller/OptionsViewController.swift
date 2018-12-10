//
//  OptionsViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 10/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

     public var langage: String = String()
    var category: String = String()
    var names:[String:[String]]
    var langN = -1
    
    @IBOutlet weak var vehicles: CategoryViewController!
    @IBOutlet weak var animals: CategoryViewController!
    @IBOutlet weak var toys: CategoryViewController!
    @IBOutlet weak var clothing: CategoryViewController!
    @IBOutlet weak var outside: CategoryViewController!
    @IBOutlet weak var places: CategoryViewController!
    @IBOutlet weak var household: CategoryViewController!
    @IBOutlet weak var bodyparts: CategoryViewController!
    @IBOutlet weak var food: CategoryViewController!
    @IBOutlet weak var furniture: CategoryViewController!
    @IBOutlet weak var people: CategoryViewController!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if langage == "fr"{
        changeLang(n: 0)
        }
        if langage == "es"{
            changeLang(n: 1)
        }
        
    }
    func changeLang(n: Int){
        
        vehicles.title?.text =
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
