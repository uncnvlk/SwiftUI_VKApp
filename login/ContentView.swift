//
//  ContentView.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 07.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var login = ""
    @State private var password = ""
    
    let skyBlue: Color = Color(red: 0.66, green: 0.84, blue: 0.94)
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: geometry.size.width,
                           maxHeight: geometry.size.height)
                
            }
            VStack {
            Spacer()
                .frame(height: 70)
            Text("VK APP")
                //.padding(.top, 32)
                .font(.largeTitle)
                .bold()
                .foregroundColor(skyBlue)
                

            Spacer()
                .frame(height: 100)

            VStack{
                HStack{
                    SecureField("login",text: $login)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack{
                    SecureField("password",text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }.frame(width: 300)

            Spacer()
                .frame(height: 50)

            Button {
                print("LOG IN IS SUCCESS")
            } label: {
                Text("Log in")
                    .padding()
                    .frame(width: 250, height: 50, alignment: .center)
            }
            .disabled(login.isEmpty || password.isEmpty)

            Spacer()
            }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
