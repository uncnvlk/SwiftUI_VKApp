//
//  Account.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import Foundation

final class Account {
    
    private init() {}
    
    static let shared = Account()
    
    var name: String = ""
    var userID: String = ""
}
