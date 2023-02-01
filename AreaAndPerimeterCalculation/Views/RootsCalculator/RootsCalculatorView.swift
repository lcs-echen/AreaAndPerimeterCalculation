//
//  RootsCalculatorView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    // MARK: Stored Properties
    @State var a : String = ""
    @State var b : String = ""
    @State var c : String = ""
    @State var priorResult: [Result] = []
    // MARK: Computed Properties
    var discriminant: Double? {
        
        // Try to convert provided a to a Double
        guard let a1 = Double(a) else {
            // Can't be done..
            // We can't calculate area...
            // Return a nil for the area value instead...
            return nil
        }
        
        // Try to convert provided b to a Double
        guard let b1 = Double(b) else {
            // Can't be done..
            // We can't calculate area...
            // Return a nil for the area value instead...
            return nil
            
        // Try to convert provided width to a Double
            guard let c1 = Double(c) else {
                // Can't be done..
                // We can't calculate area...
                // Return a nil for the area value instead...
                return nil
        }

        // We have a valid length and width values, so return the area
        return b1 * b1 - 4 * a1 * c1
    }
        
        var discriminantResult: Double {
            // Do we have a valid discriminant?
            guard let discriminantResult = discriminant else {
                return "Cannot be found. Please provide numeric input."
            }
            // We have a valid discriminant; report it
            return discriminantResult
        }

    var result : String {
        
        if discriminantResult < 0 {
            return "No real roots"
        } else {
            let x1 = ( b1 * -1 - discriminantResult.squareRoot()) / (2 * a1)
            let x2 = ( b1 * -1 + discriminantResult.squareRoot()) / (2 * a1)
            
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
    var body: some View {
  
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
                        Text("a: ")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                        TextField("Enter 'a'...", text: $a)
//                        Slider(value: $a,
//                               in: -20...20,
//                               label: { Text("Length") }
//                        )
                    }
                    VStack{
                        Text("b: ")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                        TextField("Enter 'b'...", text: $b)
//                        Slider(value: $b,
//                               in: -20...20,
//                               label: { Text("Length") } )
                        
                    }
                    
                    VStack{
                        Text("c: ")
                            .font(Font.custom("Times New Roman",
                                              size: 24.0,
                                              relativeTo: .body))
                        TextField("Enter 'c'...", text: $c)
//                        Slider(value: $c,
//                               in: -20...20,
//                               label: { Text("Length") } )
//                    }
                }
                
                Text(result)
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
                
                Button(action: {
                    let latestResult = Result(aStored: a1,
                                              bStored: b1,
                                              cStored: c1,
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
        .navigationTitle("Find the Roots")

    }
    
    

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
