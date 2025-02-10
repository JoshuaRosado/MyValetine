//
//  ShapeView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//
import SwiftUI

struct MainView: View {
    @State private var isMessageOpen = false
    @State private var isShowingNextView = false
    @State private var shakeOffsetX: CGFloat = 400
    @State private var shakeOffsetY: CGFloat = 0.0
    @State private var rotation : Double = 0
    @State private var shakeAnimationTrigger = true

    
    let shakeDuration: Double = 0.3
    let shakeInterval: Double = 2.0
    
     
    
    
    var body: some View { 
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("bgColor"))
                    .ignoresSafeArea()
                
                ZStack{
                    ZStack{
                        TheRectangle()
                        ZStack{
                            TheTriangle()
                            LetterInside()
                        }
                         
                        
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
                            withAnimation(Animation.linear(duration: 0.1)){
                                isMessageOpen.toggle()
                                rotation = 1
                                shakeAnimationTrigger = false
                                
                            }
                            
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                                
                                isShowingNextView.toggle()
                            }
                        }
                        .buttonStyle(.plain)
                       
                        }
                    
                    .foregroundStyle(.white)
                    .font(.largeTitle).bold()
                    .padding(.top, 125)
                    .buttonStyle(.plain)
                    
                     
                }
                .offset(x: shakeOffsetX, y:shakeOffsetY)
                .animation(
                    Animation.bouncy(duration: 0.6, extraBounce: 0.3),
                    value: shakeAnimationTrigger
                )
                .onAppear(){
                    startShaking()
                }
            }
            .fullScreenCover(isPresented: $isShowingNextView, content: OpenedMessage.init)
                
                    
            
            
        }
    }
    
    private func startShaking() {
        
    
        Timer.scheduledTimer(withTimeInterval: shakeInterval, repeats:true) { _ in
            shakeAnimationTrigger.toggle()
            withAnimation {
                shakeOffsetX = 0.0
                shakeOffsetY = 0.0
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4 ) {
                withAnimation{

                    shakeOffsetY = -10.0
                }
            }
            
        }
    }
}

#Preview {
    MainView()
}
