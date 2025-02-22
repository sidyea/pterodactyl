//
//  SummaryExpandableCard.swift
//  pterodactyl
//
//  Created by Siddhant Dhanrajani on 21/02/2025.
//

import SwiftUI

struct SummaryExpandableCard: View {
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
                        height: isExpanded ? UIScreen.main.bounds.height*0.5 : UIScreen.main.bounds.height*0.20
                    )
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)){
                            isExpanded.toggle()
                        }
                    }
                    .overlay(
                        VStack{
                            HStack {
                                if isExpanded{
                                    Text("Summary")
                                        .foregroundColor(.white)
                                        .font(.title.bold())
                                        .transition(.opacity)
                                } else {
                                    Text("Summary")
                                        .foregroundColor(.white)
                                        .font(.title2.bold())
 //                                       .opacity(isExpanded ? 1 : 1)

                                    }
                                Spacer()
                                }
                            
                            Spacer()
                            
                            HStack {
                                if isExpanded{
                                    Text("This is more detailed than the last. It really is something. ")
                                        .foregroundStyle(Color.white)
                                        .font(.system(size: 15))
                                        .transition(.opacity)
                                } else {
                                    Text("This is an AI generated summary of the job. It has a first line over here. It has a second line here. This is followed by a third line over here. Theres also some space for certain other details ")
                                        .foregroundStyle(Color.white)
                                        .font(.system(size: 15))
//                                        .opacity(isExpanded ? 0 : 1)

                                }
                                //Spacer()
                            }
                            Spacer()
                        }
                        .padding()
                    ) //overlay on Rounded Rect
                
            } //Zstack 1
        } //body
} //struct

struct SummaryExpandableCard_Previews: PreviewProvider {
    static var previews: some View {
        SummaryExpandableCard()
    }
}
