//
//  FriendCell.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import SwiftUI
import Kingfisher

struct FriendCell: View {

    let friend: FriendModels

    var body: some View {

        HStack(spacing: 20) {
            ProfileImage{
                KFImage(URL(string: friend.photo100))
            }
            
            VStack(alignment: .leading) {
                Text(friend.fullName)
                Text("Description")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }

    }
}
