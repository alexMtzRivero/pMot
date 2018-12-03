//
//  GameController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import Foundation

class GameController {
    var allWords:[ Word ] = [ ]
    init() {
        allWords = self.loadAllWords( )
    }
    func loadAllWords ()->[ Word ]{
        let d = readDataFromCSV(fileName: "wordsDB", fileType: "csv")
        return csvToWords(data: d!)
    }
    
    func readDataFromCSV(fileName:String, fileType: String)-> String!{
        guard let filepath = Bundle.main.path(forResource: fileName, ofType: fileType)
            else {
                return nil
        }
        do {
            return try String(contentsOfFile: filepath, encoding: .utf8)
            
        } catch {
            print("File Read Error for file \(filepath)")
            return nil
        }
    }
    
    func csvToWords(data: String) -> [Word] {
        var result: [Word] = []
        let rows = data.components(separatedBy: "\r\n")
        for row in rows {
            let columns = row.components(separatedBy: ";")
            
            
            let aString = NSString(string:columns[3])
            let aFloat = (columns[4] as NSString).floatValue
            
            result.append(Word(French: columns[0], English: columns[1], Spanish: columns[2], Sown: aString.boolValue, Correct: aFloat))
        }
        return result
    }
    
    
    
}
