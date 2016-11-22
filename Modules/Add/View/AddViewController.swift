//
//  AddAddViewController.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, AddViewInput, TransitionHandler {

    var output: AddModuleInput!
    var note: Note!

    @IBOutlet weak var contentView: UITextView!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if note != nil {
            contentView.text = note?.content
        }
    }
    
    // MARK: AddViewInput
    func setupInitialState() {
    }
    
    override  func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
        if note != nil {
        output.setWithData(content: contentView.text!, data: self.note!)
        } else {
        output.setData(content: contentView.text!)
        }
    }
}
