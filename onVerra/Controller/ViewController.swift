//
//  ViewController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frenchBtn: UIButton!
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var spanishBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        frenchBtn.layer.cornerRadius = 5
        englishBtn.layer.cornerRadius = 5
        spanishBtn.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

