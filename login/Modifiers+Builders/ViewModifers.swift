//
//  ViewModifer.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 12.02.2022.
//

import SwiftUI

struct CircleShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(Circle()
                .fill(Color.white)
                .shadow(color: shadowColor, radius: shadowRadius))
    }
}

struct AvatarAnimationModifier: ViewModifier {
    @State var scale: CGFloat = 1

    func body(content: Content) -> some View {
        content
            .scaleEffect(self.scale)
            .animation(Animation.interpolatingSpring(
                mass: 2,
                stiffness: 50,
                damping: 100,
                initialVelocity: 12), value: scale)

            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.1)) {
                    self.scale = 0.3
                }
                self.scale = 1.0
            }
    }
}
