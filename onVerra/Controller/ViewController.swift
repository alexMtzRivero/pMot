//
//  ViewController.swift
//  onVerra
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//
/*
 if we have time
 
 choose my lenguage and the one i want to learn
 
 
 */



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frenchBtn: UIButton!
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var spanishBtn: UIButton!
    @IBOutlet weak var data: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frenchBtn.layer.cornerRadius = 5
        englishBtn.layer.cornerRadius = 5
        spanishBtn.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }

    var tab = ["animals" : ["animaux", "animles"],
        "vehicles" : ["vehicules", "vehiculos"],
        "toys" : ["jouets", "juguetes"],
        "clothing" : ["vetement", "ropa"],
        "outside" : ["exterieur", "exterior"],
        "places" : ["lieux", "lugares"],
        "household" : ["maison", "casa"],
        "body_parts" : ["corps", "cuerpo"],
        "food_drink" : ["aliment", "comida"],
        "furniture_rooms" : ["fourniture", "suministro"],
        "people" : ["personne", "persona"]]
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

