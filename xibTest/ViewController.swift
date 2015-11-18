//
//  ViewController.swift
//  xibTest
//
//  Created by 川上　亮 on 2015/11/17.
//  Copyright (c) 2015年 川上　亮. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        customView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: CustomViewDelegate {
    func buttonDidTap(text: String, sender: CustomView) {
        println(text)
    }
}

