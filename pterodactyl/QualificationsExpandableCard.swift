//
//  QualificationsExpandableCard.swift
//  pterodactyl
//
//  Created by Siddhant Dhanrajani on 22/02/2025.
//

import SwiftUI

struct QualificationsExpandableCard: View {
    @State private var isExpanded = false

    var body: some View {
        ZStack {
            if isExpanded {
                Color.black.opacity(0.0) // Background dim when expanded
                    .ignoresSafeArea()
                    .onTapGesture { isExpanded.toggle()}
                
            }
            
            RoundedRectangle(cornerRadius: isExpanded ? 20 : 20)
                .fill(Color.black)
                .shadow(color: .gray, radius: 10, x: 0, y: 8)
                .frame(
                    width: isExpanded ? UIScreen.main.bounds.width*0.98 : UIScreen.main.bounds.width*0.95,
                    height: isExpanded ? UIScreen.main.bounds.height*0.5 : UIScreen.main.bounds.height*0.10
                )
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7)){
                        isExpanded.toggle()
                    }
                }
                .overlay(
                    VStack{

                        if isExpanded{
                            VStack{
                                //Spacer()
                                HStack{
                                    
                                    Text("Qualifications Required")
                                        .foregroundColor(.white)
                                        .font(.title.bold())
                                        .transition(.opacity)
                                    
                                    Spacer()
                                }
                                //Spacer()
                            }
                            .frame(height:UIScreen.main.bounds.height*0.08)
                        } else {
                            HStack{
                                Text("Qualifications")
                                    .foregroundColor(.white)
                                    .font(.title2.bold())

                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                            }
                        }
                            
                        
                        HStack {
                            if isExpanded{
                                ScrollView{
                                    Spacer()
                                    HStack{
                                        Text("This is more detailed than the last. It really is something. ")
                                            .foregroundStyle(Color.white)
                                            .font(.system(size: 15))
                                            .transition(.opacity)
                                        Spacer()
                                    }
                                    Spacer()
                                }

                            }
                            //Spacer()
                        }
                        
                    }
                    .padding()
                ) //overlay on Rounded Rect
            
        } //Zstack 1
    } //body
}

struct QualificationsExpandableCard_Previews: PreviewProvider {
    static var previews: some View {
        QualificationsExpandableCard()
    }
}
