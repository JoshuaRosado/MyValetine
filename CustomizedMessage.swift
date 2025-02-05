//
//  CustomizedMessage.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/4/25.
//

import SwiftUI

struct CustomizedMessage: View {
    @State var view : any View
    @State var message: String
    @State var isMsgVisible: Bool
    @State var scale = 0.0
    @State var opacity = 0.0
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red.opacity(0.1))
                .ignoresSafeArea()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .padding(25)
                    .shadow(color:.black.opacity(0.2), radius: 10, x: 15, y: 10)
                VStack(){
                    Spacer()
                    Text(message)
                        .frame(width: 300)
                    
                    VStack{
                    
                            Button("Next"){
                                isMsgVisible = true
                                print(isMsgVisible)
                                
                            
                        }
                        .padding(.bottom)
                    }
                    .frame(height: 350, alignment: .bottom)
                }
                .padding(30)
                
                
            }
        }
        .scaleEffect(y:scale, anchor: .bottom)
        .opacity(opacity)
        .onAppear{
            withAnimation(.easeInOut(duration: 1)){
                scale = 1.0
                opacity = 1.0
            }
        }
        
        
    }
}

#Preview {
    CustomizedMessage(view: MsgSecondSheet(), message: "Hello", isMsgVisible: false )
}
