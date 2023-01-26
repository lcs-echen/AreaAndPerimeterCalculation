//
//  TriangularPrismResultView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-25.
//

import SwiftUI

struct TriangularPrismResultView: View {
    let result: TriangularPrism
    var body: some View {
        
        
            VStack(spacing: 10) {
                HStack {
                    Text("baseline ≈ \(result.baseline.formatted(.number.precision(.fractionLength(2))))")
                    
                    Text("another side of triangle ≈ \(result.anotherSideOfTriangle.formatted(.number.precision(.fractionLength(2))))")
                    
                    Text("one side of triangle ≈ \(result.oneSideOfTriangle.formatted(.number.precision(.fractionLength(2))))")
                }
                HStack {
                    Text("triangle height ≈ \(result.trianglelength.formatted(.number.precision(.fractionLength(1))))")
                    Text("height ≈ \(result.height.formatted(.number.precision(.fractionLength(1))))")
                }
                
                HStack {
                   Text("base area ≈ \(result.trianglelength.formatted(.number.precision(.fractionLength(1))))")
                    
                    Text("rectangle area ≈ \(result.rectangleArea.formatted(.number.precision(.fractionLength(1))))")
                    
                }
                
                HStack {
                    Text("surface area ≈ \(result.totalArea.formatted(.number.precision(.fractionLength(1))))")
                    Text("volume ≈ \(result.volume.formatted(.number.precision(.fractionLength(1))))")
                }
                    
                
                Text("triangle height ≈ \(result.trianglelength.formatted(.number.precision(.fractionLength(2))))")
            }
        
        
    }
}

struct TriangularPrismResultView_Previews: PreviewProvider {
    static var previews: some View {
        TriangularPrismResultView(result: modelForPreview)
    }
}
