//
//  ContentView.swift
//  QuinaryHierarchicalStyle
//
//  Created by Thomas Durand on 28/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showQuinary = false

    var body: some View {
        VStack {
            Button("Press to crash :)") {
                showQuinary = true
            }
        }
        .padding()
        .sheet(isPresented: $showQuinary, content: {
            QuinaryView()
        })
    }
}

struct QuinaryView: View {
    var body: some View {
        Text("Hello, World!")
            .background(.quinary) // Somehow, quinary will crash on visionOS
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
