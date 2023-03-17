//
//  HomeView.swift
//  Notify
//
//  Created by Gaurav Ganju on 17/03/23.
//

import SwiftUI

struct HomeView: View {
    @State private var sampleData = ["Personal Notes", "Shared Notes"]
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: PrivateNotesView()) {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.pink)
                        Text("Personal Notes")
                    }
                }
                NavigationLink(destination: SharedNotesView()) {
                    HStack {
                        Image(systemName: "globe")
                            .foregroundColor(.pink)
                        Text("Shared Notes")
                    }
                }

            }
            .navigationTitle("Notify")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
