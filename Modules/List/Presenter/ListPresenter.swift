//
//  ListListPresenter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import Foundation

class ListPresenter: ListModuleInput, ListViewOutput, ListInteractorOutput {

    weak var view: ListViewInput!
    var interactor: ListInteractorInput!
    var router: ListRouterInput!
    var notes = [Note]()

    func handleViewDidLoad() {
       
        interactor.getNotes()
        
    }
    
    func numberOfNotes(inSection section: Int) -> Int {
        
        return notes.count
    }
    
    func notesList(for indexPath: IndexPath) -> Note {
        
        return notes[indexPath.row]
    }
    
    func setNotes(_notes notes: [Note]){
        
         self.notes = notes
    }
    
    func handleNewTap(){
        router.handleNewTap()
    }
}


