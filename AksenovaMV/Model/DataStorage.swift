//
//  DataStorage.swift
//  AksenovaMV
//
//  Created by Klepa on 05.05.2021.
//

import Foundation
import UIKit

class DataStorage: NSObject {
    
    static let shared = DataStorage()
    
    private override init() {
        super.init()
    }
    
    var usersArray = [User]()
    var allGroup = [Group]()
    var myFavoriteGroup = [Group]()
    var myNews = [New]()
    
}
