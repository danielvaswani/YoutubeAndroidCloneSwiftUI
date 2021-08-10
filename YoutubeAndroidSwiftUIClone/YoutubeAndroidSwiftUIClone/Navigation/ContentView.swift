//
//  ContentView.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 07/08/2021.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var selection = 1
    
    init() {
        UITabBar.appearance().barTintColor = .clear
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            HomePageView()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }.tag(1)
            
            ShortsView()
            
            Spacer()
            
            SubscriptionsView()
            
            LibraryView()
            
        }
        .overlay(PlusButton())
    }
}

struct PlusButton : View {
    var body: some View {
        
        VStack{
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40.0, height: 40.0)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ShortsView: View {
    var body: some View {
        Text("Shorts Placeholder")
            .tabItem {
                VStack {
                    Image(systemName: "bolt")
                    Text("Shorts")
                }
            }.tag(2)
    }
}

struct SubscriptionsView: View {
    var body: some View {
        Text("Subscriptions Placeholder")
            .tabItem {
                VStack {
                    Image(systemName: "rectangle.stack")
                    
                    Text("Subscriptions")
                }
            }.tag(4)
    }
}

struct LibraryView: View {
    var body: some View {
        Text("Library Placeholder")
            .tabItem {
                VStack {
                    Image("library")
                    Text("Library")
                }
            }.tag(5)
    }
}
