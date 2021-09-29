//
//  Session.swift
//  AksenovaMV
//
//  Created by Klepa on 18.08.2021.
//

import UIKit

final class Session {
    
    private init() {}
    
    static let shared = Session()
    
    var token: String = ""
    var userId: Int = 0
    
}
