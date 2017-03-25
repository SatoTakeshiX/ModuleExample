//
//  ViewController.swift
//  ModuleExample
//
//  Created by satoutakeshi on 2017/03/22.
//  Copyright © 2017年 Personal Factory. All rights reserved.
//

import UIKit
import FrameworkA
import FrameworkB
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(FrameworkA.globalIntConstant)
        print(FrameworkB.globalIntConstant)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

