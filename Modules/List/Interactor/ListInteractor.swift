//
//  ListListInteractor.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import RealmSwift

class ListInteractor: ListInteractorInput {

    weak var output: ListInteractorOutput!
    var realm: Realm! = try! Realm()
      var notificationToken: NotificationToken!
    
    func getNotes(){
        
        let notes = realm.objects(Note.self)
        func updateList() {
            output.setNotes(_notes: Array(notes))
        }
        updateList()
       
        self.notificationToken = self.realm.addNotificationBlock { _ in
            updateList()
        }
    }
}
