//
//  CustomView.swift
//  xibTest
//
//  Created by 川上　亮 on 2015/11/17.
//  Copyright (c) 2015年 川上　亮. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    weak var delegate: CustomViewDelegate! = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        comminInit()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        comminInit()
    }
    
    private func comminInit() {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil).first as! UIView
        addSubview(view)
        
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[view]|", options:NSLayoutFormatOptions(0), metrics:nil, views: bindings))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[view]|", options:NSLayoutFormatOptions(0), metrics:nil, views: bindings))
    }
    @IBAction func buttonClick(sender: AnyObject) {
        delegate?.buttonDidTap("ok", sender: self)
    }
}

protocol CustomViewDelegate: class {
    func buttonDidTap(text: String, sender: CustomView )
}