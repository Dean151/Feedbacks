//
//  ContentView.swift
//  ShareLink
//
//  Created by Thomas Durand on 24/09/2023.
//

import SwiftUI

struct ContentView: View {
    let string = "Hello, World!"

    var body: some View {
        VStack(spacing: 16) {
            // All is fine
            ShareLink(item: string) {
                Label("Simple ShareLink", systemImage: "square.and.arrow.up")
            }

            // No more preview, subject never seems to be used anywhere
            ShareLink(item: string, subject: Text("Subject")) {
                Label("ShareLink + Subject", systemImage: "square.and.arrow.up")
            }

            // Copy action disapeared ?!? Preview is used
            ShareLink(item: string, preview: .init("Preview")) {
                Label("ShareLink + Preview", systemImage: "square.and.arrow.up")
            }

            // Copy action disapeared ?!? Preview is used, subject never seems to be used anywhere
            ShareLink(item: string, subject: Text("Subject"), preview: .init("Preview")) {
                Label("ShareLink + Subject + Preview", systemImage: "square.and.arrow.up")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
