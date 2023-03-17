//
//  PrivateNotesView.swift
//  Notify
//
//  Created by Gaurav Ganju on 17/03/23.
//

import SwiftUI

struct PrivateNotesView: View {
    @State private var sampleDate = ["Lorem Ipsum", "Dolor Si", "Amet consectetur"]
    var body: some View {
        ZStack {
            NavigationStack {
                List(sampleDate, id: \.self) { data in
                    NavigationLink(data, destination: HomeView())
                }
                .navigationTitle("Personal Notes")
                .toolbar {
                    Button {
                        //
                    } label: {
                        Image(systemName: "pencil.tip.crop.circle.badge.plus")
                            .foregroundColor(.pink)
                    }
                }
            }
        }
    }
}

struct PrivateNotesView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateNotesView()
    }
}
