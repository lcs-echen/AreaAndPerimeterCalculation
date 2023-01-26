//
//  TPResultView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-25.
//

import SwiftUI

struct TPResultView: View {
    let tpPriorResult: modelsTP
    var body: some View {
        
        
            VStack(spacing: 10) {
                HStack {
                    Text("baseline ≈ \(tpPriorResult.baseline.formatted(.number.precision(.fractionLength(2))))")
                    
                    Text("another side of triangle ≈ \(tpPriorResult.anotherSideOfTriangle.formatted(.number.precision(.fractionLength(2))))")
                    
                    Text("one side of triangle ≈ \(tpPriorResult.oneSideOfTriangle.formatted(.number.precision(.fractionLength(2))))")
                }
                HStack {
                    Text("triangle height ≈ \(tpPriorResult.trianglelength.formatted(.number.precision(.fractionLength(1))))")
                    Text("height ≈ \(tpPriorResult.height.formatted(.number.precision(.fractionLength(1))))")
                }
                
                HStack {
                   Text("base area ≈ \(tpPriorResult.trianglelength.formatted(.number.precision(.fractionLength(1))))")
                    
                    Text("rectangle area ≈ \(tpPriorResult.rectangleArea.formatted(.number.precision(.fractionLength(1))))")
                    
                }
                
                HStack {
                    Text("surface area ≈ \(tpPriorResult.totalArea.formatted(.number.precision(.fractionLength(1))))")
                    Text("volume ≈ \(tpPriorResult.volume.formatted(.number.precision(.fractionLength(1))))")
                }
                    
                
                Text("triangle height ≈ \(tpPriorResult.trianglelength.formatted(.number.precision(.fractionLength(2))))")
            }
        
        
    }
}

struct TPResultView_Previews: PreviewProvider {
    static var previews: some View {
        TPResultView(tpPriorResult: modelForPreview)
    }
}
