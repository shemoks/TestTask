//
//  AddAddPresenter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import Foundation

class AddPresenter: AddModuleInput, AddViewOutput, AddInteractorOutput {

    weak var view: AddViewInput!
    var interactor: AddInteractorInput!
    var router: AddRouterInput!

    func viewIsReady() {

    }
    
    func setWithData(content: String, data: Note) {
        interactor.setWithData(content: content, note: data)
    }
    func setData(content: String) {
        interactor.setData(content: content)
    }
}
