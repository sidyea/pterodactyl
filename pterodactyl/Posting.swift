//
//  Posting.swift
//  pterodactyl
//
//  Created by Siddhant Dhanrajani on 21/02/2025.
//

import SwiftUI

struct Posting: View {
    var body: some View {
        
        VStack {
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
                
            }
            .padding()
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .shadow(color: .gray, radius: 10, x: 0, y: 8)
                .frame(
                    width:UIScreen.main.bounds.width*0.92,
                    height:UIScreen.main.bounds.height*0.20
                )
                .overlay{
                    VStack (alignment: .leading){
                        HStack {
                            Text("Summary")
                                .foregroundStyle(Color.white)
                                .font(.title2.bold())
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("This is an AI generated summary of the job. It has a first line over here. It has a second line here. This is followed by a third line over here. Theres also some space for certain other details ")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 15))
                        }
                        
                        Spacer()
                        
                    }
                    .padding()
                }
            
            // Job Description ---------------------------
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .shadow(color: .gray, radius: 10, x: 0, y: 8)
                .frame(
                    width:UIScreen.main.bounds.width*0.92,
                    height:UIScreen.main.bounds.height*0.10
                )
                .overlay{
                    VStack {
                        HStack {
                            Text("Job Description")
                                .foregroundStyle(Color.white)
                                .font(.title2.bold())
                            Spacer()
                        }
                    }
                    .padding()
                }
            
            // Qualifications ---------------------------
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .shadow(color: .gray, radius: 10, x: 0, y: 8)
                .frame(
                    width:UIScreen.main.bounds.width*0.92,
                    height:UIScreen.main.bounds.height*0.10
                )
                .overlay{
                    VStack {
                        HStack {
                            Text("Qualifications")
                                .foregroundStyle(Color.white)
                                .font(.title2.bold())
                            Spacer()
                        }
                    }
                    .padding()
                }
            Spacer()
            // Apply / Save  ---------------------------
            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green)
                    .shadow(color: .gray, radius: 10, x: 0, y: 8)
                    .frame(
                        width:UIScreen.main.bounds.width*0.40,
                        height:UIScreen.main.bounds.height*0.10
                    )
                    .overlay{
                        VStack {
                            HStack {
                                Text("Apply")
                                    .foregroundStyle(Color.white)
                                    .font(.title2.bold())
                                
                            }
                        }
                        .padding()
                }
                Spacer()
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow)
                    .shadow(color: .gray, radius: 10, x: 0, y: 8)
                    .frame(
                        width:UIScreen.main.bounds.width*0.40,
                        height:UIScreen.main.bounds.height*0.10
                    )
                    .overlay{
                        VStack {
                            HStack {
                                Text("Save")
                                    .foregroundStyle(Color.white)
                                    .font(.title2.bold())
                                
                            }
                        }
                        .padding()
                }
                Spacer()
            }
            
            //Spacer()
            
        }
        
        
    }
}

struct Posting_Previews: PreviewProvider {
    static var previews: some View {
        Posting()
    }
}
