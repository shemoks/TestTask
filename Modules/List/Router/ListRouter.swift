//
//  ListListRouter.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import UIKit

class ListRouter: ListRouterInput {
    
    var transitionHandler: TransitionHandler!
    
    func handleNewTap(){
        
        let addViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddController") as? AddViewController
        transitionHandler.push(viewController: addViewController!)
        
    }
   
    func showPopUp(note: Note) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PopoverViewController") as? PopUpViewController
        vc?.selectNote = note
        vc?.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        transitionHandler.present(viewController: vc!)
    }
}
