//
//  NotifyApp.swift
//  Notify
//
//  Created by Gaurav Ganju on 15/03/23.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseCore

@main
struct NotifyApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
//            let user = Auth.auth().currentUser
//            if user?.uid == nil {
//                ContentView()
//            } else {
//                SwiftUIView()
//            }
            SignUpView()
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

