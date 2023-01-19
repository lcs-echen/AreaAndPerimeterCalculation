//
//  ListView.swift
//  AreaAndPerimeterCalculation
//
//  Created by Evelyn Chen on 2023-01-19.
//

import SwiftUI

struct ListView: View {
    
    
    var body: some View {
        
        List {
            NavigationLink(destination: {
                RectangleView()
                
            }, label: {
                Text("Rectangle")
                
            })
            
            NavigationLink(destination: {
                TriangularPrismView()
            }, label: {
                Text("Triangular Prism")
            })
            .navigationTitle("Geometric Figures")
            
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
