//
//  PopUpPopUpPresenter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import UIKit

class PopUpPresenter: PopUpModuleInput, PopUpViewOutput, PopUpInteractorOutput, PopUpModuleOutput {

    weak var view: PopUpViewInput!
    var interactor: PopUpInteractorInput!
    var router: PopUpRouterInput!

    func deleteNote(note: Note) {
        interactor.deleteNote(note: note)
    }
    
    func editNote(note: Note) {
        router.showEdit(note: note)
    }
    
    func showRoot(note: Note){

    }
}
