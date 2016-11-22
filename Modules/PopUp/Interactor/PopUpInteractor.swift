//
//  PopUpPopUpInteractor.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import RealmSwift

class PopUpInteractor: PopUpInteractorInput {
    
    weak var output: PopUpInteractorOutput!
    var realm: Realm!
    
    func deleteNote(note: Note) {
        let realm: Realm! = try! Realm()
        try! realm.write {
            realm.delete(note)
        }
    }
}
