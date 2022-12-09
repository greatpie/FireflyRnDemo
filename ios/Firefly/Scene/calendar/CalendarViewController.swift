//
//  CalendarViewController.swift
//  Firefly
//
//  Created by xinya on 2022/12/8.
//

import UIKit
import React

class CalendarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let button: UIButton=UIButton(type: .system)
        button.frame=CGRect(x:100, y:100, width:100, height:100)
        button.setTitle("跳转RN", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action:#selector(handleClick), for: .touchUpInside)
        
        
        
    }
    
    @objc func handleClick(){
        let mockData:NSDictionary = ["data":["message":"from - swift"]]
       
        let reactNativeBridge = ReactNativeBridge()
        let vc = ReactViewController(moduleName: "FireflyRnDemo", bridge: reactNativeBridge.bridge, mockData: mockData)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
