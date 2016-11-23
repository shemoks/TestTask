//
//  PopUpPopUpModuleInput.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

protocol PopUpModuleInput: class {
    func deleteNote(note: Note)
    func editNote(note: Note)
    func getData() -> dataForPop
    func complite(data: Note)
}
