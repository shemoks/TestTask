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
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.YYYY HH:mm"
        return formatter
    }()
    
    func deleteNote(note: Note) {
        let realm: Realm! = try! Realm()
        try! realm.write {
            realm.delete(note)
        }
    }
    
    func complite(note: Note) {
        print(note)
        var data = dataForPop(title: "", dateCreate: "", dateEdit: "")
        if note.dateEdited != nil {
            data.dateEdit = self.dateFormatter.string(from: note.dateEdited!)
        }
        data.dateCreate = self.dateFormatter.string(from: note.dueDate)
        data.title = note.getFirstLine()
        output.setData(data: data)
    }
}
