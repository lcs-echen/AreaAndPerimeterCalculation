//
//  RectangleView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    // @State is a property wrapper
    // Telling SwiftUI to "watch" these properties for changes
    // Update the user interface when they do change
    @State var length: Double = 7.0
    @State var width: Double = 5
    
    // MARK: Computed properties
    var area: Double {
        return length * width
    }
    

    // Shows our user interface
    
    var body: some View {
        
        VStack{
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
            }
            Text("Length")
                .font(.title2)
                .fontWeight(.bold)
            Slider(value: Binding.constant(length),
                   in: 0...100,
                   label: { Text("Length") },
                   minimumValueLabel: { Text("0") },
                   maximumValueLabel: { Text("100") }
            // Use string interpolation \() to display length
            Text("\(length)")
            
            Text("Width")
                .font(.title2)
                .fontWeight(.bold)
            // Use string interpolation \() to display length
            Text("\(width)")
            
            Text("Area")
                .font(.title2)
                .fontWeight(.bold)
            // Use string interpolation \() to display length
            Text("\(area)")
            
            
            Spacer()
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
