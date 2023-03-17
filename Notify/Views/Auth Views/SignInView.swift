//
//  SignInView.swift
//  Notify
//
//  Created by Gaurav Ganju on 17/03/23.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var pass = ""
    var body: some View {
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
        }

}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
