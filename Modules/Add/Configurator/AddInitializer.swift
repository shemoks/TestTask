//
//  AddAddInitializer.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class AddModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var addViewController: AddViewController!

    override func awakeFromNib() {

        let configurator = AddModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: addViewController)
    }

}
