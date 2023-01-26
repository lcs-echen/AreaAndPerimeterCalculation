//
//  TriangularPrismView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-19.
//

import SwiftUI

struct TriangularPrismView: View {
    @State var baseline: Double = 5
    @State var triangleLength: Double = 5
    @State var height: Double = 5
    @State var oneSideOfTriangle: Double = 5
    @State var anotherSideOfTriangle: Double = 5
    @State var historyResults: [TriangularPrism] = []
    
    var baseArea: Double {
        return baseline * triangleLength / 2
    }
    var rectangleArea: Double {
        return oneSideOfTriangle * height + anotherSideOfTriangle * height + baseline * height
    }
    var totalArea: Double {
        return baseArea + rectangleArea
    }
    var volume: Double {
        return baseArea * height
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15){
                
                
                Image("TP")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                
                TriangularPrismInformationView()
                    
                    
                    Group {
                        Button(action: {
                            let latestPrism = TriangularPrism(baseline: baseline, trianglelength: triangleLength, height: height, oneSideOfTriangle: oneSideOfTriangle, anotherSideOfTriangle: anotherSideOfTriangle, baseArea: baseArea, rectangleArea: rectangleArea, totalArea: totalArea, volume: volume)
                            historyResults.append(latestPrism)
                        }, label: {
                            Text("Save Result")
                            
                        })
                        .buttonStyle(.bordered)
                        .padding()
                        
                        HStack {
                            Text("History")
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        List(historyResults.reversed()) { currentResult in
                            HStack {
                                Spacer()
                                TriangularPrismResultView(result: currentResult)
                                Spacer()
                            }
                            
                        }
                    }
                    
                }
                
                
                
            }
            .padding(.horizontal, 20)
        }
    }
    


struct TriangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        TriangularPrismView()
    }
}
