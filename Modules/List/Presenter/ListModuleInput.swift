//
//  ListListModuleInput.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//
import Foundation

protocol ListModuleInput: class {
    
    func handleViewDidLoad()
    func numberOfNotes() -> Int
    func notesList(for indexPath: IndexPath) -> Note
    func handleNewTap()
    func showPopUp(for indexPath: IndexPath)
    
}
