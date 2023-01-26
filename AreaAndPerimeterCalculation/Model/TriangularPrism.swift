//
//  TriangularPrism.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-25.
//

import Foundation

struct TriangularPrism: Identifiable {
    let id = UUID()
    let baseline : Double
    let trianglelength: Double
    let height: Double
    let oneSideOfTriangle: Double
    let anotherSideOfTriangle: Double
    let baseArea: Double
    let rectangleArea: Double
    let totalArea: Double
    let volume: Double
}

let modelForPreview = TriangularPrism(baseline: 5, trianglelength: 5, height: 5, oneSideOfTriangle: 5, anotherSideOfTriangle: 5, baseArea: 5, rectangleArea: 5, totalArea: 5, volume: 5)
