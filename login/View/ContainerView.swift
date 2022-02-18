//
//  ContainerView.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 16.02.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LogInView(isUserLoggedIn: $shouldShowMainView )
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

 
