//
//  Note.swift
//  TestTask
//
//  Created by Mac on 11/17/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import Foundation
import RealmSwift

class Note: Object {
    
    dynamic var dueDate: Date = Date()
    dynamic var content: String = ""
    dynamic var dateEdited: Date? = nil
    
    func validate () -> Bool {
        var firstChar = content
        while firstChar.characters.first == " " {
            firstChar.remove(at: firstChar.startIndex)
        }
        
        while firstChar.characters.first == "\n" {
            firstChar.remove(at: firstChar.startIndex)
        }
        if content.characters.count == 0 || firstChar.characters.count == 0 {
            return false
        }
        return true
    }
    
    func getFirstLine() -> String {
        var characters = self.content.characters
        var firstString: String = ""
        while characters.first == " " || characters.first == "\n" {
            characters.remove(at: characters.startIndex)
        }
        for character in characters {
            if character != "\n" {
                firstString.append(character)
            } else {
                break
            }
        }
        return firstString
    }
}
