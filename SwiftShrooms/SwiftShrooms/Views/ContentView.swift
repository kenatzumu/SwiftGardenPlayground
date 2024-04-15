//
//  ContentView.swift
//  SwiftShrooms
//
//  Created by Horik on 15.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
