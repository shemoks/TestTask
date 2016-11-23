//
//  PopUpPopUpViewController.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit
import RealmSwift

class PopUpViewController: UIViewController, PopUpViewInput, TransitionHandler {
    
    var output: PopUpModuleInput!
    var selectNote: Note!


    
    @IBOutlet weak var popView: CustomView!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector((viewTapped)))
        view.addGestureRecognizer(tap)
        output.complite(data: selectNote)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let note = output.getData()
        popView.titleLabel.text = note.title
        popView.createdLabel.text = note.dateCreate
        popView.editedLabel.text = note.dateEdit
        
        popView.onTouchDelete = {
            self.output.deleteNote(note: self.selectNote)
            self.dismiss()
        }
        
        popView.onTouchEdit = {
            
            self.output.editNote(note: self.selectNote)
        }
    }
    
    func viewTapped(gesture: UIGestureRecognizer) {
        
        dismiss()
    }
    
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
