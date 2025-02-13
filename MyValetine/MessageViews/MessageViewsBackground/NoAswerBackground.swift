//
//  NoAswerBackground.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/13/25.
//

import SwiftUI

struct NoAswerBackground: View {
        var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 30)
            
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 30.0)).opacity(0.4)
                    .frame(width: 385, height: 100)
                    .shadow(color: .black.opacity(0.8), radius: 2, x: 2, y: 2)
                
                VStack{
                    Text("I hope you meant to click Yes.")
                    HStack{
                        Image(systemName: "heart.slash")
                        Image(systemName: "flame")
                    }
                }
                .font(.system(size: 20, weight: .semibold, design: .default))
                .foregroundStyle(.bg)
                .padding(.horizontal, 10)
                
                
            }
            .padding(.top, 600)
            .frame(height: 1000)
            .background(
                Image("flowerOnFire")
                    .resizable()
                    .scaledToFill()
                )
                    
            
        }
            
    }


#Preview {
    NoAswerBackground()
}
