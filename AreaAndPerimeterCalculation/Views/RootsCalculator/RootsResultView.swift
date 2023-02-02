//
//  ResultView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-24.
//

import SwiftUI

struct RootsResultView: View {
    let somePriorResult: Result
    var body: some View {
            VStack(spacing: 10) {
                HStack {
                    Text("a ≈")
                    Text(somePriorResult.aStored)
                        .font(Font.custom("Times New Roman",
                                          size: 20.0,
                                          relativeTo: .body))
                    Text("b ≈")
                      Text(somePriorResult.bStored)
                        .font(Font.custom("Times New Roman",
                                          size: 20.0,
                                          relativeTo: .body))
                    Text("c ≈")
                    Text(somePriorResult.cStored)
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

struct RootsResultView_Previews: PreviewProvider {
    static var previews: some View {
        RootsResultView(somePriorResult: resultForPreviews)
    }
}
