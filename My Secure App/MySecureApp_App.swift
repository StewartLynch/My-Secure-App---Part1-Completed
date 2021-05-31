//
//  MySecureApp_App.swift
//  My Secure App
//
//  Created by Stewart Lynch on 2021-05-26.
//

import SwiftUI

@main
struct MySecureApp_App: App {
    @StateObject var authentication = Authentication()
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                ContentView()
                    .environmentObject(authentication)
            } else {
                LoginView()
                    .environmentObject(authentication)
            }
        }
    }
}
