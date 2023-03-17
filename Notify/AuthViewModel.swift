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
    var isSigned: Bool {
        return auth.currentUser != nil
    }
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else {
                return
            }
            //Success
        }
    }
    func signUp(email: String, password: String, phone: String, fullname: String) {
        let currentUser = auth.currentUser?.uid
        auth.createUser(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else {
                return
            }
            //Success
        }
        
    }
}
