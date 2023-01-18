//
//  SettingsView.swift
//  Lab1_2023
//
//  Created by ICS 224 on 2023-01-11.
//

import SwiftUI
func color2array(colour: Color) -> [CGFloat] {
    let uiColor = UIColor(colour)
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    var alpha: CGFloat = 0.0
    uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    return [red, green, blue, alpha]
}
func array2color(array: [CGFloat]) -> Color {
    return Color(Color.RGBColorSpace.sRGB, red: array[0], green: array[1], blue: array[2], opacity: array[3])
}
struct SettingsView: View {
    @Binding var maxChars : Int
    @Binding var colour : Color

    @State var stepSize = 10
    var body: some View {
        VStack {
            ColorPicker("Background", selection: Binding(
                            get : {
                                colour
                            }, set : {
                                newValue in
                                colour = newValue
                                UserDefaults.standard.set(color2array(colour: colour), forKey: "BackgroundColour")
                            })).padding()
            Stepper("Max Chars(350 max): \(maxChars)", value: Binding(
                get: {
                    maxChars
                },
                set: {
                    newValue in
                    maxChars = newValue
                    UserDefaults.standard.set(maxChars, forKey: "MaxCharacterCount")
                }), in: 1...350,
                    step: stepSize).padding()
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
  
        @State static var colour = Color.yellow
        @State static var maxChars = 150
    static var previews: some View {
        SettingsView(maxChars: $maxChars, colour: $colour)
    }

}
