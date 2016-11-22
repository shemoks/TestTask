//
//  AddAddInteractor.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import Foundation
import RealmSwift

class AddInteractor: AddInteractorInput {
    
    weak var output: AddInteractorOutput!
    
    func setWithData(content: String, note: Note) {
        let realm = try! Realm()
        note.dateEdited = Date()
        note.content = content
        if note.validate() {
            try! realm.write {
                realm.add(note, update: true)
            }
        }
    }
    
    func setData(content: String) {
        let realm = try! Realm()
        let note = Note()
        note.dueDate = Date()
        note.content = content
        if note.validate() {
            try! realm.write {
                realm.add(note)
            }
        }
    }
}
