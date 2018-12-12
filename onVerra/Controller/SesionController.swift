//
//  GameController.swift
//  onVerra
//
//  Created by Alejandro Martinez Rivero on 03/12/2018.
//  Copyright © 2018 Alejandro Martinez Rivero. All rights reserved.
//

import Foundation

class SesionController {
    
    //write modifications on csv
    
    var allWords:[ Word ] = [ ]
    init() {
        allWords = self.loadAllWords( )
    }
    
    func loadAllWords ()->[ Word ]{
        let d = readDataFromCSV(fileName: "wordsDB", fileType: "csv")
        return csvToWords(data: d!)
    }
    func loadAllWords (Path:String)->[ Word ]{
        let d = readDataFromCSV(path:Path)
        return csvToWords(data: d!)
    }
    func loadCategory (category:String)->[ Word ]{
        var wCategory:[Word] = [ ]
        for c in allWords{
            if c.category == category{
                wCategory.append(c)
            }
        }
        return wCategory
        
    }
    
    
    func readDataFromCSV(path: String)-> String!{
      let filepath = path
        do {
            return try String(contentsOfFile: filepath, encoding: .utf8)
            
        } catch {
            print("File Read Error for file \(filepath)")
            return nil
        }
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
    
    
    
    
    func saveCsv() {
        let docPath = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("wordsDB.csv")
        
        var csvText = ""
        
     allWords[ 0 ].fr = "edited 6686798"
        
    
            
            for word in allWords {
                let newLine = "\(word.fr),\(word.en),\(word.es),\(word.category),\(word.showed),\(word.correct)\n"
                csvText.append(newLine)
            }
            
            do {
                try csvText.write(to: docPath, atomically: true, encoding: .utf8)
                
                let contents = try NSString(contentsOfFile: docPath.absoluteString , encoding: String.Encoding.utf8.rawValue)
                print(contents)
                
                allWords = loadAllWords()
                print(allWords[ 0 ].fr)
                
            } catch {
                
                print("Failed to create file")
                print("\(error)")
            }
            
    
    }
    
    
    
    
    func csvToWords(data: String) -> [Word] {
        var result: [Word] = []
        let rows = data.components(separatedBy: "\r\n")
        for row in rows {
            let columns = row.components(separatedBy: ";")
            
            
            let aString = NSString(string:columns[4])
            let aFloat = (columns[5] as NSString).floatValue
            
            result.append(Word(French: columns[0], English: columns[1], Spanish: columns[2],Category:columns[3] , Sown: aString.boolValue, Correct: aFloat))
        }
        return result
    }
    
    
   func getPercentageSown(Category cat: String)->Int{
    var val = 0
     let words = getWordsFromCategori(Categori: cat)
    for word in words{
        if word.showed {
            val+=1
        }
    }
    val/=words.count
    return val
    }
    // returns the 65/80 in string of label
    func getNOfTotal (Category cat: String)->String{
        var val = 0
      let words = getWordsFromCategori(Categori: cat)
        for word in words{
            if word.showed {
                val+=1
            }
        }
        return "\(val)/\(words.count)"
    }
    
    func getWordsFromCategori(Categori cat: String)->[ Word ]{
        var cured:[Word] = [ ]
        for word in allWords{
            if word.category == cat {
                cured.append(word)
            }
            
        }
        return cured
    }
    
    
   
    
    
    
}
