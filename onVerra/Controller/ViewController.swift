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
    var sesion: SesionController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        sesion = SesionController( )
        
        
        frenchBtn.layer.cornerRadius = 5
        englishBtn.layer.cornerRadius = 5
        spanishBtn.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }

    var tab = ["animaux" : "animals", "jouets" : "toys", "vehicule" : "vehicles", "vetement" : "clothing", "exterieur" : "outside", "lieux" : "places", "maison" : "household", "corps" : "body_parts", "aliment" : "food_drink", "fourniture" : "furniture_rooms", "personne" : "people" ]
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

