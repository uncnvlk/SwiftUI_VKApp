//
//  ProfileScreen.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 12.02.2022.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
            FriendsList()
                .navigationBarTitle(Text("Friends"))
    }
}

struct FriendsList: View {
    var body: some View {
        List(0 ..< 10) { item in
            NavigationLink (
                destination: FriendProfileView(),
                label: {
                    HStack(spacing: 20) {
                        ProfileImage {
                            Image(systemName: "photo")
                        }.padding()
                        
                        VStack(alignment: .leading) {
                            Text("Name Surname")
                            Text("Description")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                        }
                    }
                })
        }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
        // ProfileScreen()
    }
}
