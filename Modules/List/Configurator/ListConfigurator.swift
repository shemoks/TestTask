//
//  ListListConfigurator.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class ListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ListViewController) {

        let router = ListRouter()

        let presenter = ListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        router.transitionHandler = viewController
    }

}
