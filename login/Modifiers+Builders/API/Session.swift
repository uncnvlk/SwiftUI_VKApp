//
//  Session.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import Foundation
import SwiftKeychainWrapper

final class Session {
    
    private init() {}
    
    static let shared = Session()
    
    var token: String {
        set {
            KeychainWrapper.standard.set(newValue, forKey: "token")
        }
        get {
            return KeychainWrapper.standard.string(forKey: "token") ?? ""
        }
    }
    
    var userID: String {
        set {
            UserDefaults.standard.setValue(newValue, forKey: "userID")
        }
        get {
            return UserDefaults.standard.string(forKey: "userID") ?? ""
        }
    }
}
