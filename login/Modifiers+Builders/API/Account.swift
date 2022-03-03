//
//  Account.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import Foundation
import SwiftKeychainWrapper

final class Account {
    
    private init() {}
    
    static let shared = Account()
    
    var token: String {
            set {
                KeychainWrapper.standard.set(newValue, forKey: "userId")
            }
            get {
                return KeychainWrapper.standard.string(forKey:"userId") ?? ""
            }
    }
    var userId: Int {
        set {
            UserDefaults.standard.set(newValue, forKey: "userId")
        }
        get {
            return UserDefaults.standard.integer(forKey:"userId")
        }
    }
    
    let clientID = "8018451"
    let version = "5.81"
}
