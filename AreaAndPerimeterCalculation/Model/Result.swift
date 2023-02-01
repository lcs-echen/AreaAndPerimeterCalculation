//
//  File.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-24.
//

import Foundation

struct Result : Identifiable {
    let id = UUID()
    let aStored : Double
    let bStored : Double
    let cStored : Double
    let roots : String
}

let resultForPreviews = Result(a: 1, b: -6, c: 8, roots: "x ≈ 2.00 and x ≈ 4.00")
