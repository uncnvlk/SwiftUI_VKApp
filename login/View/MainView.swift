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
    var body: some View {
            TabView (selection: $selection) {
                FriendsView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Friends")
                    }.tag(0)
             
                GroupsView()
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


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


