//
//  AppViewModel.swift
//  Notify
//
//  Created by Gaurav Ganju on 16/03/23.
//

import SwiftUI
import Firebase
import FirebaseAuth
class AuthViewModel: ObservableObject {
    @Published var user: User?
    let auth = Auth.auth()
    var signInSuccessfull = true
    var isSigned: Bool {
        return auth.currentUser != nil
    }
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else {
                self.signInSuccessfull.toggle()
                return
            }
            print("Login Successfull")
            //Success
        }
    }
    func signUp(email: String, password: String, phone: String, fullname: String) {
        //let currentUser = auth.currentUser?.uid
        auth.createUser(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else {
                self.signInSuccessfull.toggle()
                return
            }
            //Success
            print("Login Successfull")
        }
        
    }
    func listenToAuthState() {
        auth.addStateDidChangeListener { [weak self] _, user in
            guard let self = self else {
                return
            }
            self.user = user
        }
    }
    func signOut() {
        try? auth.signOut()
    }
}
