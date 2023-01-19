//
//  TriangularPrismView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-19.
//

import SwiftUI

struct TriangularPrismView: View {
    @State var baseline: Double = 5
    @State var trianglelength: Double = 5
    @State var height: Double = 5
    @State var oneSideOfTriangle: Double = 5
    @State var anotherSideOfTriangle: Double = 5
    var baseArea: Double {
        return baseline * trianglelength / 2
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
                
                Group {
                    Text("Baseline Length - b")
                        .font(.title2)
                        .fontWeight(.bold)
                    Slider(value: $baseline,
                           in: 0...100,
                           label: { Text("baseline") },
                           minimumValueLabel: { Text("0") },
                           maximumValueLabel: { Text("100") } )
                    
                    Text("\(baseline.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("Triangle Height Length - l")
                        .font(.title2)
                        .fontWeight(.bold)
                    Slider(value: $trianglelength,
                           in: 0...100,
                           label: { Text("baseline") },
                           minimumValueLabel: { Text("0") },
                           maximumValueLabel: { Text("100") } )
                    
                    Text("\(trianglelength.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("Height - h")
                        .font(.title2)
                        .fontWeight(.bold)
                    Slider(value: $height,
                           in: 0...100,
                           label: { Text("baseline") },
                           minimumValueLabel: { Text("0") },
                           maximumValueLabel: { Text("100") } )
                    Text("\(height.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("One side of the Triangle - a")
                        .font(.title2)
                        .fontWeight(.bold)
                    Slider(value: $oneSideOfTriangle,
                           in: 0...100,
                           label: { Text("baseline") },
                           minimumValueLabel: { Text("0") },
                           maximumValueLabel: { Text("100") } )
                    Text("\(oneSideOfTriangle.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("Another side of the Triangle - c")
                        .font(.title2)
                        .fontWeight(.bold)
                    Slider(value: $anotherSideOfTriangle,
                           in: 0...100,
                           label: { Text("baseline") },
                           minimumValueLabel: { Text("0") },
                           maximumValueLabel: { Text("100") } )
                    Text("\(anotherSideOfTriangle.formatted(.number.precision(.fractionLength(2))))")
                }
                
                
                
                Group {
                    Text("Base Area")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(baseArea.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("Rectangle Area")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(rectangleArea.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("Surface Area")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(totalArea.formatted(.number.precision(.fractionLength(2))))")
                }
                
                Group {
                    Text("Volume Area")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(volume.formatted(.number.precision(.fractionLength(2))))")
                    
                    
                }
                
                
            }
            .padding(.horizontal, 20)
        }
    }
    
}

struct TriangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        TriangularPrismView()
    }
}
