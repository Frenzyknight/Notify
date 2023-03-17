//
//  ContentView.swift
//  Notify
//
//  Created by Gaurav Ganju on 15/03/23.
//

import SwiftUI
let appViewModel = AuthViewModel()

struct ContentView: View {
    @State private var email = ""
    @State private var pass = ""
    @State private var UserIsLoggedIn = false
    var body: some View {
        if UserIsLoggedIn {
            HomeView()
        } else {
            content
        }
    }
    var content: some View {
        ZStack {
            VStack(alignment: .leading) {
                Spacer(minLength: 40)
                Text("Welcome \nUser")
                    .bold()
                    .font(.largeTitle)
                    .lineLimit(2)
                VStack(spacing: 16) {
                    TextField("Enter E-mail", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    SecureField("Enter Password", text: $pass)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    Button {
                        print("Button Clicked")
                    } label: {
                         Text("Submit")
                            .bold()
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Text("Not Registered Yet ?")
                        .foregroundColor(.blue)
                        .underline()
                        .font(.subheadline)
                    }
                .offset(y: 60)
                Spacer()
                Spacer()
                Spacer()
                Spacer(minLength: 200)
                }
            }
            .onAppear {
                appViewModel.auth.addStateDidChangeListener { auth, user in
                    if user != nil {
                        UserIsLoggedIn.toggle()
                    }
                
                }
            }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
