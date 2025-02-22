//
//  JobDescriptionExpandableCard.swift
//  pterodactyl
//
//  Created by Siddhant Dhanrajani on 21/02/2025.
//

import SwiftUI

struct JobDescriptionExpandableCard: View {
    
    @Binding var isExpanded: Bool
    
    var body: some View {
        ZStack {
            if isExpanded {
                Color.black.opacity(0.4) // Dim background when expanded
                    .ignoresSafeArea()
                    .onTapGesture {
                        isExpanded = false  // Collapse on tap outside
                    }
            }
            
            RoundedRectangle(cornerRadius: isExpanded ? 0 : 20)
                .fill(Color.blue)
                .frame(width: 200, height: 150) // Keep initial size
                .overlay(
                    ZStack {
                        if isExpanded {
                            RoundedRectangle(cornerRadius: 0)
                                .fill(Color.blue)
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                                .transition(.scale)
                                .zIndex(1) // Bring to front
                                .onTapGesture {
                                    isExpanded = false
                                }
                                .overlay(
                                    Text("Expanded Content Here")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                )
                        } else {
                            Text("Tap for more")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                    }
                )
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                        isExpanded = true
                    }
                }
        }
    }
}

/*struct JobDescriptionExpandableCard_Previews: PreviewProvider {
    static var previews: some View {
        JobDescriptionExpandableCard()
    }
}*/
