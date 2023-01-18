//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Evelyn Chen on 2023-01-17.
//

import SwiftUI


struct FView: View {
    @State var Fahrenheit : Double = 44.6
    var Celsius : Double {
        return (Fahrenheit - 32) * 5/9

    }
    
    var body: some View {
        VStack {
            Text("Fahrenheit")
                .font(.title2)
                .fontWeight(.bold)
            
            Slider(value: $Fahrenheit,
                   in: -50...212,
                   label: { Text("Fahrenheit") },
                   minimumValueLabel: { Text("-50") },
                   maximumValueLabel: { Text("212") } )
            // Use string interpolation \() to display length
            Text("\(Fahrenheit)")
            
            Text("Celsius")
                .font(.title2)
                .fontWeight(.bold)
            // Use string interpolation \() to display length
            Text("\(Celsius)")
        }
        
    }
}

struct FView_Previews: PreviewProvider {
    static var previews: some View {
            FView()
    }
}
