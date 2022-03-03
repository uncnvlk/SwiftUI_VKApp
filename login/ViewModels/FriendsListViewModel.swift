//
//  FriendsListViewModel.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import Foundation
import SwiftUI


class FriendsViewModel: ObservableObject {

    let friendService: FriendsAPI
    @Published var friends: [FriendModels] = []

    init(friendService: FriendsAPI) {
        self.friendService = friendService
    }

    public func fetchFriends() {
        friendService.getFriends { [weak self] friends in
            self?.friends = friends
        }
    }
}
