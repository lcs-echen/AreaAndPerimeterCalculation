//
//  RectangleView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    
    // Shows our user interface
    
    var body: some View {
        
        VStack {
            Image("Rectangle")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            
            Spacer()
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
