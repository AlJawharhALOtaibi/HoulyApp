//
//  HoulyApp.swift
//  Houly
//
//  Created by AlJawharh AlOtaibi on 28/03/1445 AH.
//

import SwiftUI
@main
struct HoulyApp: App {
    @State private var showOnboarding = false
    @State private var showSplash = true

    var body: some Scene {
        WindowGroup {
            ContentView(showOnboarding: $showOnboarding, showSplash: $showSplash)
        }
    }
}
