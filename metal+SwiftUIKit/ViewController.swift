//
//  ViewController.swift
//  metal+SwiftUIKit
//
//  Created by Zach Eriksen on 1/19/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.embed {
            Chapter01View()
        }
    }


}

