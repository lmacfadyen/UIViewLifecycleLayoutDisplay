//
//  ViewController.swift
//  UIViewLifecycleLayoutDisplay
//
//  Created by Lawrence F MacFadyen on 2016-04-11.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueHeight: NSLayoutConstraint!
    
    @IBAction func heightPressed(sender: AnyObject) {
        view.layoutIfNeeded()
        if(self.blueHeight.constant == 25.0)
        {
            self.blueHeight.constant = self.view.bounds.height - 100.0
        }
        else
        {
            self.blueHeight.constant = 25.0
        }
        UIView.animateWithDuration(2.0) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

