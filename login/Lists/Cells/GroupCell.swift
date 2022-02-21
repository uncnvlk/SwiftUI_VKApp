//
//  GroupCell.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 20.02.2022.
//

import SwiftUI
import Kingfisher

struct GroupCell: View {

    let group: GroupModels

    var body: some View {

        HStack {
            KFImage(URL(string: group.photo100))
                .modifier(CircleShadow(shadowColor: .gray, shadowRadius: 3))
            VStack(alignment: .leading) {
                Text(group.name)
            }
        }
    }
}
