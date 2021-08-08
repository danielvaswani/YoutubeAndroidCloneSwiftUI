//
//  TopToolbar.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 07/08/2021.
//

import SwiftUI

struct TopToolbar: View {
    var body: some View {
        VStack(spacing: 6){
            Icons(notifications:0)
            Divider()
                .background(Color(#colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1)))
            Tags()
            Spacer()
        }
    }
}

struct TopToolbar_Previews: PreviewProvider {
    static var previews: some View {
        TopToolbar()
    }
}

struct Icons: View {
    let notifications : Int
    
    var moreThan9 : Bool { notifications > 9 }
    var text : String { moreThan9 ? "9+" : "\(notifications)" }
    
    var body: some View {
        HStack(spacing:3) {
            Image(systemName:"play.rectangle.fill").aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
                .clipShape(RoundedRectangle(cornerRadius:10))
            Text("YouTube")
                .fontWeight(.semibold)
            
            Spacer()
            HStack(spacing:15){
                Image(systemName: "airplayvideo").aspectRatio(contentMode: .fit).frame(width:30,alignment: .leading)
                
                ZStack(alignment : .topTrailing){
                    Image(systemName :"bell").aspectRatio(contentMode: .fit)
                    
                    
                        Text(notifications > 0 ? text : "")
                            .font(.caption2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            
                            .frame(width: (moreThan9 ? 18.0:13.0))
                            .background(notifications > 0 ? Color.red : Color.clear)
                            
                            .clipShape(Capsule())
                            .offset(x: (moreThan9 ? 7.0 : 4.0), y: -2)
                            .edgesIgnoringSafeArea(.all)
                    
                        
                }.frame(width:30,alignment: .leading)
                    
                Image(systemName: "magnifyingglass").aspectRatio(contentMode: .fit).frame(width:30,alignment: .leading)

                Circle().frame(width: 23)
            }
        }
        .font(Font.body.weight(.light))
        .frame(height: 23)
        .padding(.horizontal)
    }
}

struct Tags: View {
    let tags : [String] = ["All","Swift","Podcasts","Debate","iOS","Computer Programming","Universe", "Coffee", "Gadgets", "Science", "Meal prep", "Stocks", "History", "SpaceX", "Grand Theft Auto V", "Tesla, Inc.", "Live", "Mixes", "Music", "Recently uploaded", "New to you"]
    var body : some  View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10){
                HStack {
                    HStack{
                        Image(systemName : "safari")
                        Text("Explore")
                        
                    }
                    .padding(10)
                    .background(Color(#colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1)))
                    Divider()
                        .background(Color(#colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1)))
                }
                
                
                ForEach(tags, id: \.self){
                    Text($0)
                        .padding(.horizontal,10)
                        .padding(.vertical,5)
                        .background(Color(#colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1))).cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25.0)
                                .stroke(Color(#colorLiteral(red: 0.8861868978, green: 0.8863358498, blue: 0.8861672282, alpha: 1)),lineWidth: 1.2)
                        )
                }
                
            }
            .frame(height: 40, alignment: .top)
        }
    }
}
