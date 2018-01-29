//
//  ViewController.swift
//  CMBarcodeBright
//
//  Created by cjh0092@naver.com on 01/26/2018.
//  Copyright (c) 2018 cjh0092@naver.com. All rights reserved.
//

import UIKit
import CMBarcodeBright

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Barcode Bright"
        let back = UIBarButtonItem(title: "Back", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = back

        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

