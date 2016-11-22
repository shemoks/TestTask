//
//  CustomView.swift
//  TestTask
//
//  Created by Mac on 11/21/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit


class CustomView: UIView {
 typealias ButtonAction = () -> ()
    var view: UIView!
    var nibName: String = "View"
    var onTouchEdit: ButtonAction?
    var onTouchDelete: ButtonAction?
   // var currentNote: Note!
   
    @IBOutlet weak var createdLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var editedLabel: UILabel!
    
    @IBAction func editButton(_ sender: AnyObject) {
        onTouchEdit?()
    }
    
    @IBAction func deleteButton(_ sender: AnyObject) {
        onTouchDelete?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
}
