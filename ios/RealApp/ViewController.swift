//
//  ViewController.swift
//  RealApp
//
//  Created by Ashley, Alex on 5/21/18.
//  Copyright © 2018 Ashley, Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RealApp",
            initialProperties: nil,
            launchOptions: nil
        )
        let controller = UIViewController()
            controller.view = rootView
            self.present(controller, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
