//
//  protocol.swift
//  GetItDone
//
//  Created by MyMacBook on 12/12/2018.
//  Copyright © 2018 MyMacBook. All rights reserved.
//

import UIKit

protocol GDHeaderDelegate {
    func openAddItemPopup()
}

protocol GDNewItemDelegate {
    func addItemToList(text: String)
}

protocol GDListCellDelegate {
//    func toggleToDo(id: Int, status: Bool)
    func toggleToDo()
}
