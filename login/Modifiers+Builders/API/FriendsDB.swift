//
//  FriendsDB.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 23.02.2022.
//

import Foundation
import RealmSwift


final class FriendDB {
    
    init() {
        Realm.Configuration.defaultConfiguration = Realm.Configuration(schemaVersion: 7)
    }
    
    func save(_ items: [FriendModels]) {
        let realm = try! Realm()
        
        do {
            try! realm.write {
                realm.add(items)
            }
        }
    }
    
    func load() -> Results<FriendModels> {
        
        let realm = try! Realm()
        
        let friends: Results<FriendModels> = realm.objects(FriendModels.self)
        
        return friends
        
    }
    
    func delete(_ items: [FriendModels]) {
        let realm = try! Realm()
        try! realm.write {
            realm.delete(items)
        }
    }
}

