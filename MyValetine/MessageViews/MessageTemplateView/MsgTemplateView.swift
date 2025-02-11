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
    internal let arrayOfViews : [AnyView] = [AnyView(MsgSecondSheet()), AnyView(MsgThirdSheet()), AnyView(MsgFourthSheet()), AnyView(MsgFinalSheet())]
    var body: some View {
        
        ZStack {
            if nextViewIndex == 3{
                FlowerMsgBackgroundView()
            } else {
                MsgBackgroundView()
            }
                VStack{
                    Spacer()
                    TypingAnimationView(textToType: message, nextViewIndex: nextViewIndex)
                        .padding(.top,30)
                        .padding(.horizontal, 25)
                    
                    if nextViewIndex == 3{
                        Spacer()
                        HStack{
                            Button(){
                                print("Yes")
                            } label: {
                                Label("Yes", systemImage: "heartbroken")
                            }
                            Button("No"){
                                print("No")
                            }
                        }
                        
                        
                    }
                    if nextViewIndex == 3{
                        Spacer()
                    } else {
                        
                        
                        
                        VStack{
                            NavigationLink{
                                arrayOfViews[nextViewIndex]
                            }label: {
                                Text("Next")
                                    .opacity(0.8)
                                    .font(.system(size: 20, weight: .medium, design: .default))
                                    .foregroundStyle(.secondary)
                                Button(""){
                                    
                                    isMsgVisible = true
                                    
                                }
                                
                                .buttonStyle(.plain)
                                
                            }
                            
                            .buttonStyle(.plain)
                            .padding(.bottom, 25)
                        }
                        
                        .frame(height: 350, alignment: .bottom)
                    }
                }
                .padding(30)
                .padding(.top, 45)
                
            
            } .fullScreenCover(isPresented: $isMsgVisible){
                arrayOfViews[nextViewIndex]
            }
        }
    }


#Preview {
    MsgTemplateView(message: "Hello", isMsgVisible: false, nextViewIndex: 0)
}
