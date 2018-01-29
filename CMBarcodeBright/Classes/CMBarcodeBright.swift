//
//  CMBarcodeBright.swift
//  CMBarcodeBrightness
//
//  Created by Junghoon on 2018. 1. 25..
//  Copyright © 2018년 Junghoon. All rights reserved.
//

import Foundation
import UIKit

public class CMBarcodeBright : NSObject {
    
    let MAX_BRIGHT : CGFloat = 1.0
    
    static public let shard = CMBarcodeBright()
    public var userBrightValue : CGFloat = 0
    
}

extension CMBarcodeBright {
    
    /**
     It get user bright value.
     
     
     */
    public func initBright () {
        
        userBrightValue = UIScreen.main.brightness

    }
    
    
    /**
     Setting BarcodeView about bright.
     
     
     */
    public func setBarcodeViewBright () {
        
        userBrightValue = UIScreen.main.brightness
        UIScreen.main.brightness = MAX_BRIGHT

    }
    
    
    /**
     it will change user Bright
     
     
     */
    public func restoreBright () {
        
        UIScreen.main.brightness = userBrightValue
    }
    
    /**
     User interaction Call(Open) "Home Button","Control Center", "Alert Contorl"
     
     - Parameters:
        - target : BarcodeView Controller Name

     */
    public func applicationWillResignActive (targetClass target : AnyClass ) {
        setUserBright(targetClass: target)
    }
    
    /**
     it will show your App
     
     - Parameters:
        - target : BarcodeView Controller Name 
 
     
     */
    public func applicationWillEnterForeground (targetClass target : AnyClass ) {
        setMaxBrightForBarcodeView(targetClass: target)
    }
    
    /**
     it dismiss(Close) "Control Center", "Alert Control"
     
     - Parameters:
        - target : BarcodeView Controller Name
     */
    public func applicationDidBecomeActive (targetClass target : AnyClass ) {
        setMaxBrightForBarcodeView(targetClass: target)
    }
    
    
    
    private func setUserBright (targetClass target : AnyClass ) {
        if getTopViewController().isKind(of: target) == true {
            UIScreen.main.brightness = userBrightValue
        } else if getTopViewController().childViewControllers.last?.isKind(of: target) == true {
            UIScreen.main.brightness = userBrightValue
        } else {
            userBrightValue = UIScreen.main.brightness
            
        }
    }
    
    private func setMaxBrightForBarcodeView (targetClass target : AnyClass ) {
        if getTopViewController().isKind(of: target) == true {
            
            UIScreen.main.brightness = MAX_BRIGHT
            
        } else if getTopViewController().childViewControllers.last?.isKind(of: target) == true {
            
            UIScreen.main.brightness = MAX_BRIGHT
            
        }
    }
    
    private func getTopViewController() -> UIViewController {
        
        var topController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
        
        while topController?.presentedViewController != nil {
            topController = topController?.presentedViewController
        }
    
        return topController!
        
    }
    
}
