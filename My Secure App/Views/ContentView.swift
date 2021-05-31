//
//  ContentView.swift
//  My Secure App
//
//  Created by Stewart Lynch on 2021-05-26.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authentication: Authentication
    var body: some View {
        NavigationView {
            VStack {
                Text("Authorized..  You are in!!")
                    .font(.largeTitle)
                Image("Inside")
            }
                .padding()
                .navigationTitle("My Secure App")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Log out") {
                        authentication.updateValidation(success: false)
                    }
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
