//
//  GDLabel.swift
//  GetItDone
//
//  Created by MyMacBook on 01/12/2018.
//  Copyright © 2018 MyMacBook. All rights reserved.
//

import UIKit

class GDLabel: UILabel {
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String = "default text", color: UIColor = .white, size: CGFloat = 16, frame: CGRect = .zero, textAlign: NSTextAlignment = .left) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-v4020-Regular", size: size)
        self.textAlignment = textAlign
    }
    
}
