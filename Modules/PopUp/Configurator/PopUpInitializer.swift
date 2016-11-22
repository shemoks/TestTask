//
//  PopUpPopUpInitializer.swift
//  TestTask
//
//  Created by Shemshur Oksana on 21/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class PopUpModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var popupViewController: PopUpViewController!

    override func awakeFromNib() {

        let configurator = PopUpModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: popupViewController)
    }

}
