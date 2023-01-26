//
//  TriangularPrismInformationView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-25.
//

import SwiftUI

struct TriangularPrismInformationView: View {
    
    @State var baseline: Double = 5
    @State var trianglelength: Double = 5
    @State var height: Double = 5
    @State var oneSideOfTriangle: Double = 5
    @State var anotherSideOfTriangle: Double = 5
    @State var tPriorResult: [modelsTP] = []
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
        VStack {
            
            Group {
                Text("Baseline Length - b")
                    .font(.title2)
                    .fontWeight(.bold)
                Slider(value: $baseline,
                       in: 0...100,
                       label: { Text("baseline") },
                       minimumValueLabel: { Text("0") },
                       maximumValueLabel: { Text("100") } )
                
                NumberView(value: baseline)
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
                
                NumberView(value: trianglelength)
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
                NumberView(value: height)
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
                NumberView(value: oneSideOfTriangle)
            }
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
                
                NumberView(value: anotherSideOfTriangle)
            }
            
            Group {
                Text("Base Area")
                    .font(.title2)
                    .fontWeight(.bold)
                NumberView(value: baseArea)
            }
            
            Group {
                Text("Rectangle Area")
                    .font(.title2)
                    .fontWeight(.bold)
                NumberView(value: rectangleArea)
            }
            
            Group {
                Text("Surface Area")
                    .font(.title2)
                    .fontWeight(.bold)
                NumberView(value: totalArea)
            }
            
            Group {
                Text("Volume Area")
                    .font(.title2)
                    .fontWeight(.bold)
                NumberView(value: volume)
                
                
            
        }
    }

}
struct TriangularPrismInformationView_Previews: PreviewProvider {
       static var previews: some View {
           TriangularPrismInformationView()
       }
   }
