//
//  UI_ComponentApp.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

@main
struct UI_ComponentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(defaultUser)
        }
    }
}
