//
//  RectangleView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    let length: Double = 7.0
    let width: Double = 5
    
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
