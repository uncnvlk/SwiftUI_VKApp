//
//  FriendProfile.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 16.02.2022.
//

import SwiftUI
import ASCollectionView
import Kingfisher

struct FriendProfileView: View {
    
    @State var dataExample = (0 ..< 10).map { $0 }
    
    let friend: FriendModels
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 20) {
                ProfileImageWhenOpen {
                    KFImage(URL(string: friend.photo100))
            }
                        
                VStack(alignment: .leading) {
                    Text(friend.fullName)
                    Text("Description")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
            }.frame(width: 300)
            Spacer()
            
            ASCollectionView(data: dataExample, dataID: \.self)
            { item, _ in
                Color.gray
                    .overlay(Text("\(item)"))
            }
            .layout
            {
                .grid(
                    layoutMode: .adaptive(withMinItemSize: 150),
                    itemSpacing: 10,
                    lineSpacing: 10,
                    itemSize: .absolute(200))
            }.padding()
        }
    }
}

