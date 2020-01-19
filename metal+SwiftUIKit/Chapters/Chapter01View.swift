//
//  Chapter01View.swift
//  metal+SwiftUIKit
//
//  Created by Zach Eriksen on 1/19/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import UIKit
import SwiftUIKit
import MetalKit

class Chapter01View: UIView {
    private var label = Label("Your system has the following GPU(s):\n")
    
    init() {
        super.init(frame: .zero)
        
        guard let device = MTLCreateSystemDefaultDevice() else {
            fatalError("Your GPU does not support Metal!")
        }
        
        embed {
            label.number(ofLines: 3)
        }
        
        label.text?.append("\(device.name)")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
