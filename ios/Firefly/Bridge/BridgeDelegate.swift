//
//  BridgeDelegate.swift
//  Firefly
//
//  Created by xinya on 2022/12/8.
//

import Foundation
import React

class BridgeDelegate: NSObject, RCTBridgeDelegate {
    
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.js", fallbackExtension: nil)
    }
}

