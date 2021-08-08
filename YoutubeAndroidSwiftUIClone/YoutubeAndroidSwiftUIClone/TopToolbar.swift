//
//  TopToolbar.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 07/08/2021.
//

import SwiftUI

struct TopToolbar: View {
    var notifications : Int
    var newVideos : Bool
    
    var body: some View {
        VStack(spacing: 6){
            Icons(notifications:notifications)
            Divider()
                .background(Color(#colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1)))
            VStack(spacing: 0.0) {
                TagsView()
                if newVideos {
                    ZStack {
                        Color.blue
                            .frame(height: 50)
                        HStack {
                            Image(systemName: "arrow.clockwise")
                            Text("Latest videos")
                        }.font(.headline)
                        .foregroundColor(.white)
                    }
                }
            }
            
        }
    }
}

struct TopToolbar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                TopToolbar(notifications: 2, newVideos: true)
                Spacer()
            }
            VStack {
                TopToolbar(notifications: 10, newVideos: false)
                Spacer()
            }
        }
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

//func isFirstElement(x: String, y: [String]) -> Bool {
//    let z = x.hashValue == y[0].hashValue
//    let 😀 = x.hashValue == y[1].hashValue
//    //print(z,😀)
//    return z
//}

struct TagsView: View {
    let tags : [String] = ["All","New to you","Swift","Debate","iOS","Computer Programming","Universe", "Coffee", "Gadgets", "Science", "Meal prep", "Stocks", "History", "SpaceX", "Grand Theft Auto V", "Tesla, Inc.", "Live", "Mixes", "Music", "Recently uploaded", "Podcasts"]
    
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
                
                                
                
                ForEach(0..<tags.count, id: \.self){ index in
                    TagItem(text: tags[index], firstElement: index == 0)
                }
                
            }
            .frame(height: 40, alignment: .top)
        }
        .padding(.leading, 15.0)
    }
}

struct TagItem: View {
    var text: String
    var firstElement : Bool
    
    var foreground : Color {
        true ? Color.white : Color.black
    }

    var background : Color {
        true ? Color.white : Color.black
    }
    
    var body: some View {
        Text(text)
            .foregroundColor( firstElement ? Color.white : Color.black)
            .padding(.horizontal,10)
            .padding(.vertical,5)
            .background(firstElement ? Color(#colorLiteral(red: 0.3764303923, green: 0.3764986694, blue: 0.376421392, alpha: 1)) : Color(#colorLiteral(red: 0.94892627, green: 0.9490850568, blue: 0.9489052892, alpha: 1))  ).cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(Color(#colorLiteral(red: 0.8861868978, green: 0.8863358498, blue: 0.8861672282, alpha: 1)),lineWidth: 1)
            )
    }
}
