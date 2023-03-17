//
//  SwiftUIView.swift
//  Notify
//
//  Created by Gaurav Ganju on 16/03/23.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var authViewModel: AuthViewModel
    @State private var fullName = ""
    @State private var pass = ""
    @State private var confirmPass = ""
    @State private var email = ""
    @State private var phoneNum = ""
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Spacer(minLength: 40)
                Text("Sign \nUp")
                    .bold()
                    .font(.largeTitle)
                    .lineLimit(2)
                Spacer(minLength: 40)
                VStack(spacing: 16) {
                    TextField("Enter Full Name", text: $fullName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    TextField("Enter Password", text: $pass)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    TextField("Confirm Password", text: $confirmPass)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    TextField("Enter Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    TextField("Enter Phone Number", text: $phoneNum)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    Button("Submit") {
                        print("Button Clicked")
                        authViewModel.signUp(email: email, password: pass, phone: phoneNum, fullname: fullName)
                    }
                    .bold()
                    .padding()
                    .frame(width: 300, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1)))
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer(minLength: 60)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(authViewModel: AuthViewModel())
    }
}
