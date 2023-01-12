//
//  SettingsView.swift
//  Lab1_2023
//
//  Created by ICS 224 on 2023-01-11.
//

import SwiftUI

struct SettingsView: View {
    @State private var colour = Color.yellow
    var body: some View {
        ColorPicker("Background", selection: $colour).padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
