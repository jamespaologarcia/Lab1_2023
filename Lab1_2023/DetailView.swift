//
//  ContentView.swift
//  Lab1_2023
//
//  Created by ICS 224 on 2023-01-11.
//

import SwiftUI
struct DetailView: View {
    @State private var description = ""
    @State private var favorite = false
    @State var maxChars: Int
    var colour: Color	
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .resizable(resizingMode: .stretch)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .background(favorite ? colour : Color.white)
            Toggle(isOn: $favorite) {
                Text("Favorite")
            }
            TextEditor(text:
                Binding(
                    get: {
                        description
                    },
                    set: {
                        newValue in
                        if newValue.count <= maxChars {
                            description = newValue
                        }
                    }
                )
            )
        }
        .padding()
        Text(String(description.count))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView( maxChars: 150, colour: Color.yellow)
    }
}

