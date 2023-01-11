//
//  ContentView.swift
//  Lab1_2023
//
//  Created by ICS 224 on 2023-01-11.
//

import SwiftUI

struct ContentView: View {
    @State private var description = ""
    var body: some View {
        VStack {
            Image(systemName: "ladybug")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextEditor(text: $description)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
