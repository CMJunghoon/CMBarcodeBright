//
//  BarcodeViewController.swift
//  CMBarcodeBright_Example
//
//  Created by Junghoon on 2018. 1. 26..
//  Copyright © 2018년 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import CMBarcodeBright

class BarcodeViewController: UIViewController {
    
    override func viewDidLoad() {
        
        CMBarcodeBright.shard.setBarcodeViewBright()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //BackButton Action.
    override func viewWillDisappear(_ animated: Bool) {
        CMBarcodeBright.shard.restoreBright()
    }
}



class ModalBarcodeViewController: UIViewController {
    
    override func viewDidLoad() {
        
        CMBarcodeBright.shard.setBarcodeViewBright()
        
    }
    
    @IBAction func close(_ sender: Any) {
        
        CMBarcodeBright.shard.restoreBright()
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
