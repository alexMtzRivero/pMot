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
    var names:[String:[String]] = [:]
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
        else if langage == "es"{
            changeLang(n: 1)
        }
        
    }
    func changeLang(n: Int){
        vehicles.title?.text = names[vehicles.title!.text!.lowercased()]![n]
        animals.title?.text = names[animals.title!.text!.lowercased()]![n]
        toys.title?.text = names[toys.title!.text!.lowercased()]![n]
        clothing.title?.text = names[clothing.title!.text!.lowercased()]![n]
        outside.title?.text = names[outside.title!.text!.lowercased()]![n]
        places.title?.text = names[places.title!.text!.lowercased()]![n]
        household.title?.text = names[household.title!.text!.lowercased()]![n]
        bodyparts.title?.text = names[bodyparts.title!.text!.lowercased()]![n]
        food.title?.text = names[food.title!.text!.lowercased()]![n]
        furniture.title?.text = names[furniture.title!.text!.lowercased()]![n]
        people.title?.text = names[people.title!.text!.lowercased()]![n]
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! LevelViewController
        secondController.category = self.category
    
    }

    @IBAction func catSelected(_ sender: Any) {
        let buttonCat:UIButton = sender as! UIButton
        let catView: CategoryViewController =  buttonCat.superview as! CategoryViewController
        category = (catView.title?.text?.lowercased())!
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
