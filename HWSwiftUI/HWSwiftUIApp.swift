//
//  HWSwiftUIApp.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 09/03/21.
//

import SwiftUI

@main
struct HWSwiftUIApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        print("📟 AppSUIApp application is starting up. App initialiser.")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ListViewModel())
                .environmentObject(Router())
        }
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("📟 App is active")
            case .inactive:
                print("📟 App is inactive")
            case .background:
                print("📟 App is in background")
            @unknown default:
                print("📟 Oh - interesting: I received an unexpected new value.")
            }
        }
    }
}
