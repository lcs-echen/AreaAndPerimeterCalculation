//
//  ResultView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-24.
//

import SwiftUI

struct ResultView: View {
    let somePriorResult: Result
    var body: some View {
        
        
            VStack(spacing: 10) {
                HStack {
                    Text("a ≈ \(somePriorResult.a.formatted(.number.precision(.fractionLength(1))))")
                        .font(Font.custom("Times New Roman",
                                          size: 20.0,
                                          relativeTo: .body))
                    Text("b ≈ \(somePriorResult.b.formatted(.number.precision(.fractionLength(1))))")
                        .font(Font.custom("Times New Roman",
                                          size: 20.0,
                                          relativeTo: .body))
                    Text("c ≈ \(somePriorResult.c.formatted(.number.precision(.fractionLength(1))))")
                        .font(Font.custom("Times New Roman",
                                          size: 20.0,
                                          relativeTo: .body))
                    
                }
                Text(somePriorResult.roots)
                    .font(Font.custom("Times New Roman",
                                      size: 20.0,
                                      relativeTo: .body))
            }
        
        
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultForPreviews)
    }
}
