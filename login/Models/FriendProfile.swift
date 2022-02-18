//
//  FriendProfile.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 16.02.2022.
//

import SwiftUI
import ASCollectionView

struct FriendProfileView: View {
    
    @State var dataExample = (0 ..< 10).map { $0 }
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 20) {
                ProfileImageWhenOpen {
                    Image(systemName: "photo")
            }
                        
                VStack(alignment: .leading) {
                    Text("Name Surname")
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

struct FriendProfile_Previews: PreviewProvider {
    static var previews: some View {
        FriendProfileView()
    }
}
