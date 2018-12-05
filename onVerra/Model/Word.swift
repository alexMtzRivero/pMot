//
//  Word.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import Foundation

class Word {
    
    
    
    var fr:String
    var sp:String
    var en:String
    var showed:Bool
    var category:String
    var correct:Float
    init(French f :String, English e:String ,Spanish s:String, Category c:String, Sown sw:Bool,Correct cr:Float) {
        self.fr = f
        self.en = e
        self.sp = s
        self.category = c
        self.showed = sw
        self.correct = cr
    }
   
    
}
