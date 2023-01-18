//
//  CVIew.swift
//  TemperatureConverter
//
//  Created by Evelyn Chen on 2023-01-17.
//

import SwiftUI

struct CView: View {
    @State var Celsius : Double = 7
    var Fahrenheit : Double {
        return Celsius * 9/5 + 32

    }
    
    var body: some View {
        VStack {
            Text("Celsius")
                .font(.title2)
                .fontWeight(.bold)
            
            Slider(value: $Celsius,
                   in: -50...100,
                   label: { Text("Celsius") },
                   minimumValueLabel: { Text("-50") },
                   maximumValueLabel: { Text("100") } )
            // Use string interpolation \() to display length
            Text("\(Celsius)")
            
            Text("Fahrenheit")
                .font(.title2)
                .fontWeight(.bold)
            // Use string interpolation \() to display length
            Text("\(Fahrenheit)")
        }
        
    }
}
struct CView_Previews: PreviewProvider {
    static var previews: some View {
            CView()

    }
}


