//
//  ContainerView.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 16.02.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView: Bool = true
    
//    var friendsAPI: FriendsAPI
//    var groupsAPI: GroupsAPI
    var body: some View {
        NavigationView {
            HStack {
                VKLoginWebView()
                NavigationLink(destination: MainView(), isActive: $shouldShowMainView) {
                }
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}

 
