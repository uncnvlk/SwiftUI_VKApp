//
//  ViewBuilders.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 12.02.2022.
//

import SwiftUI

struct ProfileImage: View {
    var content: Image

    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }

    var body: some View {
        content
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .modifier(CircleShadow(shadowColor: .purple, shadowRadius: 4))
            //.shadow(radius: 4)
    }
}

struct ProfileImageWhenOpen: View {
    var content: Image

    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }

    var body: some View {
        content
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            //.modifier(CircleShadow(shadowColor: .purple, shadowRadius: 4))
            //.shadow(radius: 4)
    }
    
}
