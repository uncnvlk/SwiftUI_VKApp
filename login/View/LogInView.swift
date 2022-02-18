//
//  ContentView.swift
//  login
//
//  Created by Elizaveta Sidorenkova on 07.02.2022.
//

import SwiftUI
import Combine

struct LogInView: View {
    
    // для использования внешней переменной
    @Binding var isUserLoggedIn: Bool
    
    @State private var login = "bar"
    @State private var password = "foo"
    
    // уведомление об ошибке
    @State private var showIncorrentCredentialsWarning = false
    
    @State private var shouldShowLogo: Bool = true
    
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter
            .default
            .publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map{ _ in true},
        NotificationCenter
            .default
            .publisher(for: UIResponder.keyboardWillHideNotification)
            .map{ _ in true}
    ).removeDuplicates()
    
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

            Button(action: verifyLoginData){
                Text("Log in")
                    .padding()
                    .frame(width: 250, height: 50, alignment: .center)
            }
            .disabled(login.isEmpty || password.isEmpty)

            Spacer()
            }.onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                withAnimation(Animation.easeOut(duration: 0.5)) {
                    self.shouldShowLogo = !isKeyboardOn
                }
            }
        }.onTapGesture {
            UIApplication.shared.endEditing()
        }.alert(isPresented: $showIncorrentCredentialsWarning) {
            Alert(title: Text("Error"),
                  message: Text("Incorrent Login/Password was entered"))
        }
    }
    
    private func verifyLoginData() {
         if login == "bar" && password == "foo" {
            isUserLoggedIn = true
         } else {
             showIncorrentCredentialsWarning = true
         }
         // сбрасываем пароль, после проверки для лучшего UX
         password = ""
     }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
