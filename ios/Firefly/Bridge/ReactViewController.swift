//
//  ReactViewController.swift
//  Firefly
//
//  Created by xinya on 2022/12/8.
//

import UIKit
import React

class ReactViewController: UIViewController {
    
    init(moduleName: String, bridge: RCTBridge, mockData: NSDictionary) {
        super.init(nibName: nil, bundle: nil)
        self.view = RCTRootView(bridge: bridge,
                           moduleName: moduleName,
                           initialProperties: mockData as [NSObject : AnyObject])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
