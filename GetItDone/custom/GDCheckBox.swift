//
//  GDCheckBox.swift
//  GetItDone
//
//  Created by MyMacBook on 19/12/2018.
//  Copyright © 2018 MyMacBook. All rights reserved.
//

import UIKit

class GDCheckBox: UIButton {
    
    var toggled: Bool? {
        didSet {
            if let toggled = toggled {
                if toggled {
                    backgroundColor = .green
                    setImage(UIImage(named: "done-icon"), for: .normal)
                } else {
                    backgroundColor = .clear
                    setImage(UIImage(), for: .normal)
                }
                
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.grayZero.cgColor
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
