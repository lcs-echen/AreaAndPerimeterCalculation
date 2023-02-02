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
    var a1: String {
        guard let a1 = Double(a) else {
            return "Please provide a valid 'a' information."
        }
        return a1.formatted(.number.precision(.fractionLength(2)))
    }
    
    var b1: String {
        guard let b1 = Double(a) else {
            return "Please provide a valid 'a' information."
        }
        return b1.formatted(.number.precision(.fractionLength(2)))
    }
    
    var c1: String {
        guard let c1 = Double(a) else {
            return "Please provide a valid 'a' information."
        }
        return c1.formatted(.number.precision(.fractionLength(2)))
    }
    
    var discriminant: Double? {
        
        // Try to convert provided a to a Double
        guard let a1 = Double(a) else {
            return nil
        }
        guard let b1 = Double(b) else {
            return nil
            
        }
        
        // Try to convert provided c to a Double
        guard let c1 = Double(c) else {
            return nil
        }
        
        // We have a valid a,b and c values, so return the discriminant
        return b1 * b1 - 4 * a1 * c1
    }
    
    var result : String {
        
        // Check to see if the discriminant could be found
        guard let discriminant = discriminant else {
            return "Could not find discriminant; please check input for a, b, c, and provide valid information."
        }
        
        guard let a1 = Double(a) else {
            return "Please provide a valid 'a' value."
        }
        
        guard let b1 = Double(b) else {
            return "Please provide a valid 'b' value."
        }
        
        if discriminant < 0 {
            return "No real roots"
        } else {
            let x1 = ( b1 * -1 - discriminant.squareRoot()) / (2 * a1)
            let x2 = ( b1 * -1 + discriminant.squareRoot()) / (2 * a1)
            
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
            
            VStack {
                HStack{
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
                HStack{
                    Text("b: ")
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                    TextField("Enter 'b'...", text: $b)
                    //                        Slider(value: $b,
                    //                               in: -20...20,
                    //                               label: { Text("Length") } )
                    
                }
                
                HStack{
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
                // Ensure that message does not get truncated
                    .fixedSize(horizontal: false, vertical: true)
                
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
    
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
