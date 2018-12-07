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

    
    //Button
    @IBOutlet weak var frenchBtn: UIButton!
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var spanishBtn: UIButton!
    @IBOutlet weak var data: UILabel!
    var sesion: SesionController!
    
    //Action french button
    @IBAction func frenchBtn(_ sender: Any) {
        //Element selected
        let cat: Categories = Categories( )
        
        print(cat.categories[ "animals" ]![0])
        
        //Category name
        changeCategories()
        
    }
    
    //Action spanish button
    @IBAction func spanishBtn(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sesion = SesionController( )
        
        sesion = SesionController( )
        sesion.saveCsv()
        
        frenchBtn.layer.cornerRadius = 5
        englishBtn.layer.cornerRadius = 5
        spanishBtn.layer.cornerRadius = 5
        
    }

   
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

