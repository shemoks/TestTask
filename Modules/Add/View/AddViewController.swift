//
//  AddAddViewController.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, AddViewInput, TransitionHandler {

    var output: AddViewOutput!

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var contentView: UITextView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: AddViewInput
    func setupInitialState() {
    }
}
