//
//  PopUpPopUpConfigurator.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class PopUpModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? PopUpViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: PopUpViewController) {

        let router = PopUpRouter()

        let presenter = PopUpPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = PopUpInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        router.transitionHandler = viewController
    }
}
