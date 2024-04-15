//
//  SwiftShroomsApp.swift
//  SwiftShrooms
//
//  Created by Horik on 15.04.2024.
//

import SwiftUI

@main
struct SwiftShroomsApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
