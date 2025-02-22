//
//  Posting.swift
//  pterodactyl
//
//  Created by Siddhant Dhanrajani on 21/02/2025.
//

import SwiftUI

struct Posting: View {
    @State private var isExpanded = false
    @State private var navigate = false  // Controls navigation
    
    var body: some View {
        
        VStack {
            // Title Z Stack
            VStack (alignment: .leading){
                
                HStack {
                    Text("Job Title")
                        .font(.title.bold())
                    Spacer()
                }
                
                HStack {
                    Text("Incredible Engineer Intern at Smartpeoples Department")
                        .font(.subheadline.bold())
                }
                //Spacer()
            }
            .frame(height:UIScreen.main.bounds.height*0.10)
            .padding()
            
            ScrollView{
                VStack{
                    /*RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(
                            width: UIScreen.main.bounds.width*0.98,
                            height: UIScreen.main.bounds.height*0.20
                        )
                        .overlay(
                            VStack{
                                Spacer()
                                HStack{
                                    Text("Summary")
                                        .font(.title2.bold())
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                Spacer()
                                HStack{
                                    Text("This is a description of everything discussed in this job posting.")
                                        .font(.system(size: 15))
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                Spacer()
                            }
                                .padding()
                        )
                        .shadow(radius: 10, x:0, y:10)*/
                    SummaryExpandableCard()
                }
                
                
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(
                            width: UIScreen.main.bounds.width*0.95,
                            height: UIScreen.main.bounds.height*0.10
                        )
                        .overlay(
                            VStack{
                                Spacer()
                                HStack{
                                    Text("Job Description")
                                        .font(.title2.bold())
                                        .foregroundColor(.white)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                
                            }
                                .padding()
                        )
                        .shadow(radius: 10, x:0, y:10)
                }
                
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(
                            width: UIScreen.main.bounds.width*0.95,
                            height: UIScreen.main.bounds.height*0.10
                        )
                        .overlay(
                            VStack{
                                Spacer()
                                HStack{
                                    Text("Qualifications")
                                        .font(.title2.bold())
                                        .foregroundColor(.white)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                
                            }
                                .padding()
                        )
                        .shadow(radius: 10, x:0, y:10)
                }
                
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(
                            width: UIScreen.main.bounds.width*0.95,
                            height: UIScreen.main.bounds.width*0.8
                        )
                        .overlay(
                            VStack{
                                VStack {
                                    HStack{
                                        Text("Map")
                                            .font(.title2.bold())
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                                .padding()
                                
                            }
                                .padding()
                        )
                        .shadow(radius: 10, x:0, y:10)
                }
                
                    
            }
            .frame(height:UIScreen.main.bounds.height*0.65)
            
            
            
            
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .shadow(radius: 10, x:0, y:10)
                        .overlay{
                            Button("Apply"){
                            }
                        }
                        .foregroundColor(.white)
                        .font(.title2.bold())
                    
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.gray)
                        .shadow(radius: 10, x:0, y:10)
                        .overlay{
                            Button("Save"){
                            }
                            .foregroundColor(.white)
                            .font(.title2.bold())
                            
                        }
                }
                
            }
            .frame(
                width: UIScreen.main.bounds.width*0.98,
                height: UIScreen.main.bounds.height*0.08
            )
            
            
        } //ZStack for full body
        
        
    } //body
} //struct

struct Posting_Previews: PreviewProvider {
    static var previews: some View {
        Posting()
    }
}
