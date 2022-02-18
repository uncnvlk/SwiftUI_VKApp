//
//  GroupList.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 12.02.2022.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
            GroupsList()
    .navigationBarTitle(Text("Groups"))
    }
}

struct GroupsList: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack {
                Image(systemName: "photo")
                        .modifier(CircleShadow(shadowColor: .gray, shadowRadius: 3))
                VStack(alignment: .leading) {
                    Text("Name")
                }
            }
        }
    }
}

struct GroupsList_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
        // ProfileScreen()
    }
}
