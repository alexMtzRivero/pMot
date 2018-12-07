//
//  Game.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import Foundation
class Game{
    var words:[ Word ]
    var points: Int
    init(Words words:[ Word ]) {
        self.words = words
        points = 0
    }
    func newtWord() {
        if words.count == 0{
            endGame()
        }
        else{
            //doStuf
        }
    }
    func pop() -> Word {
        let number = Int(arc4random_uniform(UInt32(words.count)) + 1)
        return words.remove(at: number)
    }
    func endGame()  {
        
    }
    
}
