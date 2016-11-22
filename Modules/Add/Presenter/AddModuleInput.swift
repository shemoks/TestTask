//
//  AddAddModuleInput.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import Foundation

protocol AddModuleInput: class {
    
    func setData(content: String)
    func setWithData(content: String, data: Note)
    
}
