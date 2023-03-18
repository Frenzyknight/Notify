//
//  HomeView.swift
//  Notify
//
//  Created by Gaurav Ganju on 17/03/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var authViewModel: AuthViewModel
    @State private var showAddSheet = false
    @State private var sampleData = ["Personal Notes", "Shared Notes"]
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    NavigationLink(destination: PrivateNotesView()) {
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(.blue)
                            Text("Personal Notes")
                        }
                    }
                    NavigationLink(destination: SharedNotesView()) {
                        HStack {
                            Image(systemName: "globe")
                                .foregroundColor(.blue)
                            Text("Shared Notes")
                        }
                    }
                }
            }
            .navigationTitle("Notify")
            .toolbar {
                HStack {
                    Button("Sign Out") {
                        authViewModel.signOut()
                    }
                    .foregroundColor(.red)
                }
            }
        }.sheet(isPresented: $showAddSheet) {
            AddNoteView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(authViewModel: AuthViewModel())
    }
}
