//
//  UpgrayeddPandaParadeApp.swift
//  UpgrayeddPandaParade
//
//  Created by Michael Vilabrera on 6/25/25.
//  Originally from Apple
//  

import SwiftUI

@main
struct UpgrayeddPandaParadeApp: App {
    @State private var updatedFetcher = UpdatedPandaFetcher()
    var body: some Scene {
        WindowGroup {
            PandaParade()
                .environment(updatedFetcher)
        }
    }
}
