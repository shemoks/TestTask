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
    
    dynamic var name = ""
    dynamic var dueDate: Date = Date()
    dynamic var content = ""

}
