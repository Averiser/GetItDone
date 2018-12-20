//
//  optionset.swift
//  GetItDone
//
//  Created by MyMacBook on 07/12/2018.
//  Copyright © 2018 MyMacBook. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon = ButtonOptions(rawValue: 1 << 1)
}
