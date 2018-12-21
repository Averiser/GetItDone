//
//  GDGradient.swift
//  GetItDone
//
//  Created by MyMacBook on 30/11/2018.
//  Copyright © 2018 MyMacBook. All rights reserved.
//

import UIKit

class GDGradient: UIView {
    
//    var colors:[CGColor] = [
//        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
//        UIColor.init(red: 58, green: 123, blue: 213).cgColor
//    ]
    var hexColors:[CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    
    ]
    
    // #3A7BD5
    // #64E4FF
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0, 1.2]
        }
        
        
    }
    
    override class var layerClass: AnyClass{
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}