//
//  ProfileScreen.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 12.02.2022.
//

import SwiftUI


struct FriendsView: View {

    @ObservedObject var viewModel: FriendsViewModel

    init(viewModel: FriendsViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink (destination: FriendProfileView(friend: friend),
                            label: {
                                FriendCell(friend: friend)
                            })
        }.onAppear(perform: viewModel.fetchFriends)
        .navigationBarTitle("Friends", displayMode: .inline)
    }
}
