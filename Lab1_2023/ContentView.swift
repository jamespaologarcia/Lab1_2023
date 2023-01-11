//
//  ContentView.swift
//  Lab1_2023
//
//  Created by ICS 224 on 2023-01-11.
//

import SwiftUI

struct ContentView: View {
    @State private var description = ""
    @State private var favorite = false
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .resizable(resizingMode: .stretch)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .background(favorite ? Color.yellow : Color.white)
            Toggle(isOn: $favorite) {
                Text("Favorite")
            }
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
