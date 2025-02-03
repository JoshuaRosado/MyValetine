//
//  MsgSecondSheet.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/3/25.
//

import SwiftUI

struct MsgSecondSheet: View {
    var body: some View {
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
                    Text("I was thinking and wondering")
                        .frame(width: 300)
                    
                    VStack{
                        
                            Button("Next"){
                                
                            }
                        
                        .padding(.bottom)
                    }
                    .frame(height: 350, alignment: .bottom)
                }
                .border(.red)
                .padding(30)
                
                
            }
        }
    }
}

#Preview {
    MsgSecondSheet()
}
