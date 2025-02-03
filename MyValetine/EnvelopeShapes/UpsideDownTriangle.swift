//
//  UpsideDownTriangle.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/2/25.
//

import SwiftUI

struct UpsideDownTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        return path
    }
}

#Preview {
    UpsideDownTriangle()
}
