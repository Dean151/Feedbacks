//
//  ContentView.swift
//  ShareLink
//
//  Created by Thomas Durand on 24/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Group {
                Text("AirDrop this to another item will create an impossible to open file in the Files.app.\nThat seems unexpected")

                Text("Also, any exported Transferable UTType will also create a file in Files.app instead of opening it in the app that exports the type (or at least proposing the app to be opened)")
            }
            .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
            ShareLink(item: "Hello, World!") {
                Label("Press here, and AirDrop to another device.", systemImage: "square.and.arrow.up")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
