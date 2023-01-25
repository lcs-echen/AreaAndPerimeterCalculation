//
//  ModelsTP.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-25.
//

import Foundation

struct modelsTP {
    let id = UUID()
    let baseline : Double = 5
    let trianglelength: Double = 5
    let height: Double = 5
    let oneSideOfTriangle: Double = 5
    let anotherSideOfTriangle: Double = 5
    let baseArea: Double
    let rectangleArea: Double
    let totalArea: Double
    let volume: Double
}

let modelForPreview = modelsTP(baseArea: 12.50, rectangleArea: 75.00, totalArea: 87.50, volume: 62.50)
