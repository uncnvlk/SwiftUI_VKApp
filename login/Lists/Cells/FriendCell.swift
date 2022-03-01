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
    @State private var opacity = 1.0
    @State private var degress = 0.0
    
    var body: some View {

        HStack(spacing: 20) {
            ProfileImage{
                KFImage(URL(string: friend.photo100))
            }.padding()
                .onTapGesture {
                        self.opacity = 0.5
                        withAnimation(.linear(duration: 1)) {
                            self.opacity = 1
                            self.degress = 360
                        }
                        self.degress = 0
                    }
            
            VStack(alignment: .leading) {
                Text(friend.fullName)
                Text("Description")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }.animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 10), value: 45)

    }
}
