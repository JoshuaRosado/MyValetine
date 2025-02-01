//
//  ShapeView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//

import SwiftUI
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        return path
    }
}

struct TheTriangle: View {
    var body: some View {
        Triangle()
            .fill(Color.pink).brightness(0.3)
            .frame(width: 300, height: 125)
            .position(x: 150, y:65)
            .cornerRadius(20)
        
    }
}

struct OpenedTriangle: View {
    var body: some View {
        Triangle()
            .fill(Color.pink).brightness(0.6)
            .frame(width: 300, height: 130)
            .position(x: 150, y:65)
            .cornerRadius(20)
            
        
    }
}

struct TheRectangle: View {
    var body: some View {
        Rectangle()
            .fill(Color.pink).brightness(-0.3)
        
            .frame(width: 300, height: 200)
            .cornerRadius(20)
            .shadow(color:.black.opacity(0.2), radius: 5, x: 12, y: 15)
            
    }
    
}

struct ShapeView: View {
    @State private var isMessageOpen = false
    @State private var rotation : Double = 0
    
    var body: some View {
        ZStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 60)
                    .stroke(Color.brown, lineWidth: 20).brightness(-0.4)
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.red.opacity(0.1))
                
                    .ignoresSafeArea()
            }
            
            ZStack{
                ZStack{
                    TheRectangle()
                    TheTriangle()
                    
                    
                    if isMessageOpen {
                        
                        OpenedTriangle()
                            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 0, z: rotation))
                            .position(x:150, y: -90)
                            .animation(.easeInOut(duration: 20), value: rotation)
                            .shadow(color:.black.opacity(0.2), radius: 10, x: 20, y: 15)
                            
                            
                    } else {
                        OpenedTriangle()
                    }
                        
            
      
                }
                .frame(width: 300, height: 200)
                
                Button("Open"){
                    isMessageOpen.toggle()
                    withAnimation{
                        rotation = 1
                    }
                    
                }
                .foregroundStyle(.white)
                .font(.largeTitle).bold()
                .padding(.top, 125)
                .buttonStyle(.plain)
            }
        }
//        .sheet(isPresented: $isMessageOpen){
//            OpenedMessage()
//        }
    }
}

#Preview {
    ShapeView()
}
