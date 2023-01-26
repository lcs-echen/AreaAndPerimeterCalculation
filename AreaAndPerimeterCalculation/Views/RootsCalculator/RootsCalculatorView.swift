//
//  RootsCalculatorView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    // Stored Properties
    @State var a : Double = 5
    @State var b : Double = 5
    @State var c : Double = 5
    @State var priorResult: [Result] = []
    // Computed Properties
    var result : String {
        let discriminant = b * b - 4 * a * c
        
        if discriminant < 0 {
            return "No real roots"
        } else {
            let x1 = ( b * -1 - discriminant.squareRoot()) / (2 * a)
            let x2 = ( b * -1 + discriminant.squareRoot()) / (2 * a)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Find the Roots")
                .font(.largeTitle)
                .fontWeight(.semibold)
            VStack (alignment: .center) {
                Image("QF")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Image("StandardQuadratic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                HStack {
                    VStack{
                        Text("a: \(a.formatted(.number.precision(.fractionLength(1))))")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                        
                        Slider(value: $a,
                               in: -20...20,
                               label: { Text("Length") }
                        )
                    }
                    VStack{
                        Text("b: \(b.formatted(.number.precision(.fractionLength(1))))")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                        
                        Slider(value: $b,
                               in: -20...20,
                               label: { Text("Length") } )
                        
                    }
                    
                    VStack{
                        Text("c: \(c.formatted(.number.precision(.fractionLength(1))))")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                        
                        Slider(value: $c,
                               in: -20...20,
                               label: { Text("Length") } )
                    }
                }
                
                Text(result)
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
                
                Button(action: {
                    let latestResult = Result(a: a,
                                              b: b,
                                              c: c,
                                              roots: result)
                    priorResult.append(latestResult)
                }, label: {Text("Save Result")})
                    .buttonStyle(.bordered)
                    .padding()
            }
            HStack {
                Text("History")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            
            List(priorResult.reversed()) { currentResult in
                HStack {
                    Spacer()
                    RootsResultView(somePriorResult: currentResult)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding(25)
    }
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
