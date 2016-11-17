//
//  AddAddPresenter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

class AddPresenter: AddModuleInput, AddViewOutput, AddInteractorOutput {

    weak var view: AddViewInput!
    var interactor: AddInteractorInput!
    var router: AddRouterInput!

    func viewIsReady() {

    }
}
