//
//  MySession.swift
//  AksenovaMV
//
//  Created by Klepa on 26.09.2021.
//

import Foundation

final class MySession {

    private init() {}

    static let shared = MySession()

    var token: String? = ""
    var userId: Int? = 0

}
