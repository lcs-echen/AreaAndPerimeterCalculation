//
//  NumberView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-26.
//

import SwiftUI

struct NumberView: View {
    
    let value: Double
    
    var body: some View {
        Text("\(value.formatted(.number.precision(.fractionLength(2))))")
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(value: 3.1415926)
    }
}
