//
//  ShapeView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//
import SwiftUI

struct MainView: View {
    @State private var isMessageOpen = false
    @State private var isNavigating = false
    @State private var shakeOffsetX: CGFloat = 0
    @State private var shakeOffsetY: CGFloat = 0
    @State private var rotation : Double = 0
    @State private var shakeAnimationTrigger = true

    
    let shakeDuration: Double = 0.2
    let shakeInterval: Double = 2.0
    
    
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.red.opacity(0.1))
                    .ignoresSafeArea()
                
                ZStack{
                    ZStack{
                        TheRectangle()
                        TheTriangle()
                        
                        
                        if isMessageOpen {
                            
                            RotatingTriangle()
                                .rotation3DEffect(.degrees(180), axis: (x: 0, y: 0, z: rotation))
                                .position(x:150, y: -88)
                                .animation(.easeInOut(duration: 20), value: rotation)
                                .shadow(color:.black.opacity(0.2), radius: 20, x: 25, y: 2)
                            
                            
                        } else {
                            RotatingTriangle()
                        }
                        
                        
                        
                    }
                    .frame(width: 300, height: 200)
                    
                    NavigationLink {
                        OpenedMessage()
                    } label: {
                        Button("Open"){
                            
                            withAnimation(Animation.linear(duration: 1.0)){
                                isMessageOpen.toggle()
                                shakeAnimationTrigger = false
                                rotation = 1
                                
                            }
                        }
                            
                        }
                    
                    .foregroundStyle(.white)
                    .font(.largeTitle).bold()
                    .padding(.top, 125)
                    .buttonStyle(.plain)
                    
                    
                }
                .offset(x: shakeOffsetX, y:shakeOffsetY)
                .animation(
                    Animation.linear(duration: shakeDuration),
                    value: shakeAnimationTrigger
                )
                .onAppear(){
                    startShaking()
                }
            }
            .fullScreenCover(isPresented: $isMessageOpen){
                OpenedMessage()
            }
            
//                    .sheet(isPresented: $isMessageOpen){
//                        OpenedMessage()
//                    }
        }
    }
    
    private func startShaking() {
        
    
        Timer.scheduledTimer(withTimeInterval: shakeInterval, repeats:true) { _ in
            shakeAnimationTrigger.toggle()
            withAnimation {
                shakeOffsetX = 1.5
                shakeOffsetY = 15
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + shakeDuration ) {
                withAnimation{
                    shakeOffsetX = 0
                    shakeOffsetY = 0
                }
            }
            
        }
    }
}

#Preview {
    MainView()
}
