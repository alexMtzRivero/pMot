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
  
    @IBOutlet weak var categoryItem: CategoryViewController!
    
    
   
    var sesion: SesionController!
    
    //Action french button

    @IBAction func frenchAction(_ sender: Any) {
       var text = ""
    performSegue(withIdentifier: "FrSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondController = segue.destination as! OptionsViewController
        secondController.a =
    }
    
    @IBAction func ChooseCategory(_ sender: Any) {
        
        
    }
    
    //Action spanish button
    @IBAction func spanishBtn(_ sender: Any) {
        //changeCategories()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        //sesion = SesionController( )
        
        //sesion = SesionController( )
        //sesion.saveCsv()
        
        frenchBtn.layer.cornerRadius = 5
        englishBtn.layer.cornerRadius = 5
        spanishBtn.layer.cornerRadius = 5
  

        
    }
    

   
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

