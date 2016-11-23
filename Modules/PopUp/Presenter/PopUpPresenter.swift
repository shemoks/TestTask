//
//  PopUpPopUpPresenter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import UIKit

struct dataForPop {
    var title: String = ""
    var dateCreate: String = ""
    var dateEdit: String = ""
}

class PopUpPresenter: PopUpModuleInput, PopUpViewOutput, PopUpInteractorOutput {

    weak var view: PopUpViewInput!
    var interactor: PopUpInteractorInput!
    var router: PopUpRouterInput!
    var popData: dataForPop!

    func deleteNote(note: Note){
        interactor.deleteNote(note: note)
    }
    
    func editNote(note: Note){
        router.showEdit(note: note)
    }
    
    func complite(data: Note){
        interactor.complite(note: data)
    }
    
    func setData(data: dataForPop){
        self.popData = data
    }
    
    func getData() -> dataForPop{
        return self.popData
    }
}
