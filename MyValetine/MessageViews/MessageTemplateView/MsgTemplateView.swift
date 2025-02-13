//
//  MsgTemplateView.swift
//  MyValetine
//
//  Created by Joshua Rosado Olivencia on 2/10/25.
//

import SwiftUI


struct MsgTemplateView: View {
    @State var message: String
    @State var noResponse = "WFT?"
    @State var isMsgVisible: Bool
    @State var nextViewIndex: Int
    @State var answerIsYes = false
    @State var answerIsNo = false
    @State var showEndMessage = false
    internal let arrayOfViews : [AnyView] = [AnyView(MsgSecondSheet()), AnyView(MsgThirdSheet()), AnyView(MsgFourthSheet()), AnyView(MsgFinalSheet())]
    var body: some View {
        
        ZStack {
            if nextViewIndex == 3{
                if !answerIsNo{
                    FlowerMsgBackgroundView()
                } else if answerIsNo{
                    NoAswerBackground()
                    
                }
            } else {
                MsgBackgroundView()
            }
                VStack{
                    Spacer()
                    TypingAnimationView(textToType: message, nextViewIndex: nextViewIndex)
                        .padding(.top,30)
                        .padding(.horizontal, 25)
                        .messageStyle()
                    
                    if nextViewIndex == 3{
                        Spacer()
                        HStack{
                            if !answerIsNo{
                                Button(){
                                    
                                    withAnimation{
                                        answerIsYes.toggle()
                                    }
                                } label: {
                                    Label("Yes", systemImage: answerIsYes ? "heart.fill" :"square" )
                                }
                                .sensoryFeedback(.success, trigger: answerIsYes)
                                .symbolEffect(.bounce, options: .speed(4).repeat(.periodic(6, delay: 0.6)), value: answerIsYes)
                                .font(.system(size: 40, weight: .semibold, design: .default))
                                .foregroundStyle(answerIsYes ? Color("pinkInside") : .secondary.opacity(0.8))
                                
                                
                                .contentTransition(.symbolEffect(.replace))
                                
                            }
                            if !answerIsYes{
                                Button(){
                                    withAnimation{
                                        answerIsNo.toggle()
                                    }
                                }  label: {
                                    if answerIsNo{
                                        VStack{
                                            Label("No", systemImage: "checkmark.square")
                                            Label("", systemImage:  "heart.slash.fill" )
                                            
                                        }
                                    } else {
                                        Label("No", systemImage: "square")
                                    }
                                }
                                . padding(.bottom, answerIsNo ? 50: 0)
                                .buttonStyle(.plain)
                                .sensoryFeedback(.decrease, trigger: answerIsNo)
                                .font(.system(size: (answerIsNo ? 45 : 40), weight: .semibold, design: .default))
                                .foregroundStyle(answerIsNo ? .red : .secondary.opacity(0.8))
                                
                                
                                .contentTransition(.symbolEffect(.replace))
                                
                            }
                            
                        }
                        
                        if answerIsYes {
                            Button("Read this"){
                                showEndMessage.toggle()
                            }
                            .padding(.top,25)
                            .opacity(0.8)
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundStyle(Color("bgColor"))
                            .buttonStyle(.plain)
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
                
            
            }
        .sheet(isPresented: $showEndMessage){
            AnswerIsYesView()
        }
        .fullScreenCover(isPresented: $isMsgVisible){
            
                arrayOfViews[nextViewIndex]
            }
        }
    }


#Preview {
    MsgTemplateView(message: "Hello", isMsgVisible: false, nextViewIndex: 0)
}
