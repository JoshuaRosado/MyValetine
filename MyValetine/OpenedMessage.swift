//
//  openedMessage.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//

import SwiftUI

struct OpenedMessage: View {
    @State var message = "Hola Preciosa"
    @State var isMsgVisible = false
    @State var scale = 0.0
    @State var opacity = 0.0
    var body: some View {
        NavigationStack{
            ZStack {
                MsgBackgroundView()
                    VStack{
                        Spacer()
                        Text(message)
                            .frame(width: 300)
                        
                        VStack{
                            NavigationLink{
                                MsgSecondSheet()
                            }label: {
                                
                                Button("Next"){
                                    isMsgVisible = true
                                    print(isMsgVisible)
                                    
                                }
                            }
                            .padding(.bottom)
                        }
                        .frame(height: 350, alignment: .bottom)
                    }
                    .padding(30)
                    
                    
                }
            }
        .scaleEffect(y:scale, anchor: .center)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeInOut(duration: 1)){
                    scale = 1.0
                    opacity = 1.0
                }
            }
            .fullScreenCover(isPresented: $isMsgVisible){
                MsgSecondSheet()
            }
        }
        
    }




#Preview {
    OpenedMessage()
}
