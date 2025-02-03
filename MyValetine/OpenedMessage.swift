//
//  openedMessage.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 1/29/25.
//

import SwiftUI

struct OpenedMessage: View {
    @State private var isMsgSecondSheet = false
    var body: some View {
        NavigationStack{
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.red.opacity(0.1))
                    .ignoresSafeArea()
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .padding(20)
                    VStack(){
                        Spacer()
                        Text("Hola preciosa!")
                            .frame(width: 300)
                        
                        VStack{
                        
                                Button("Next"){
                                    isMsgSecondSheet = true
                                    
                                
                            }
                            .padding(.bottom)
                        }
                        .frame(height: 350, alignment: .bottom)
                    }
                    .border(.red)
                    .padding(30)
                    
                    
                }
            }
            .sheet(isPresented: $isMsgSecondSheet){
                MsgSecondSheet()
            }
        }
    }
}

#Preview {
    OpenedMessage()
}
