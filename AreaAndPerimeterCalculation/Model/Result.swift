//
//  File.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-24.
//

import Foundation

struct Result : Identifiable {
    let id = UUID()
    let aStored : String
    let bStored : String
    let cStored : String
    let roots : String
}

let resultForPreviews = Result(aStored: "1", bStored: "-6", cStored: "8", roots: "x ≈ 2.00 and x ≈ 4.00")
