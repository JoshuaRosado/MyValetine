//
//  MsgTemplateView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/10/25.
//

import SwiftUI

struct MsgTemplateView: View {
    @State var message: String
    @State var isMsgVisible: Bool
    @State var nextViewIndex: Int
    @State var views = [MsgSecondSheet(), MsgSecondSheet()]
    var body: some View {
        ZStack {
            MsgBackgroundView()
                VStack{
                    Spacer()
                    TypingAnimationView(textToType: message)
                        
                    
                    VStack{
                        NavigationLink{
                            views[0]
                        }label: {
                            
                            Button("Next"){
                                isMsgVisible = true
                                
                            }
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundStyle(.secondary).opacity(0.5)
                            .buttonStyle(.plain)
                            
                        }
                        .buttonStyle(.plain)
                        .padding(.bottom)
                    }
                    .frame(height: 350, alignment: .bottom)
                }
                .padding(30)
                
                
            }
        }
    }


#Preview {
    MsgTemplateView(message: "Hello", isMsgVisible: false, nextViewIndex: 0)
}
