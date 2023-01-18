//
//  NavigationView.swift
//  TemperatureConverter
//
//  Created by Evelyn Chen on 2023-01-17.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        List {
            NavigationLink(destination: {
                CView()
                
            }, label: {
                Text("Convert Celsius to Fahrenheit")
                
            })
            
            NavigationLink(destination: {
                FView()
            }, label: {
                Text("Convert Fahrenheit to Celsius")
            })
            
            
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
