//
//  ReactNativeBridge.swift
//  Firefly
//
//  Created by xinya on 2022/12/8.
//

import Foundation
import React

class ReactNativeBridge {
    let bridge: RCTBridge
    
    init() {
        
        bridge = RCTBridge(delegate: BridgeDelegate(), launchOptions: nil)
    }
}
