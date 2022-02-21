//
//  MainView.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 16.02.2022.
//

import SwiftUI

struct MainView: View {
    //@State private var selected = 0
    
    @State private var selection = 0
    
    // ???
    let friendsAPI = FriendsAPI()
    let groupsAPI = GroupsAPI()
    
    
    var body: some View {
            TabView (selection: $selection) {
                FriendsView(viewModel: FriendsViewModel(friendService: self.friendsAPI))
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }.tag(0)
             
                GroupsView(viewModel: GroupsViewModel(groupService: self.groupsAPI))
                    .tabItem {
                        Image(systemName: "rectangle.fill.on.rectangle.fill")
                        Text("Groups")
                    }.tag(1)
             
                Text("News")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "newspaper")
                        Text("News")
                    }.tag(2)
            }.onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
        
    }
}
