//
//  Game.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import Foundation
public class Game{
    var words:[ Word ]
    var allOptions:[Word]
    var points: Int
    init(Words words:[ Word ]) {
        self.words = words
        points = 0
        self.allOptions = words
    }
    
    func newWord()  -> Word! {
        if words.count == 0{
            return nil
        }
        else{
            return pop()
        }
    }
    func gerRandomOption(lang:String)-> Word{
        let number = Int(arc4random_uniform(UInt32(allOptions.count)))
        return allOptions[number]
    }
    func pop() -> Word {
        let number = Int(arc4random_uniform(UInt32(words.count)))
        return words.remove(at: number)
    }
   
    
}
