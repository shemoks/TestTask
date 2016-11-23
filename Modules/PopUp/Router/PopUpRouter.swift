//
//  PopUpPopUpRouter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import UIKit

class PopUpRouter: PopUpRouterInput {
    
    var transitionHandler: TransitionHandler!
    
    func showEdit(note: Note){
        let addViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddController") as? AddViewController
        addViewController?.note = note
        let window = UIApplication.shared.windows.first!
        let rootController = window.rootViewController as! UINavigationController
        let firstVC = rootController.viewControllers[0] as! ListViewController
         transitionHandler.dismissWithCompletion(firstViewController: firstVC, secondViewController: addViewController!)
    }
}
