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
            }
            .tag(1)
            
            Text("Tab Label 2")
                .tabItem {
                    VStack {
                        Image(systemName: "bolt")
                        Text("Shorts")
                    }
                }.tag(2)
            
            HomePageView().overlay(PlusView())
                .tabItem {
                    Image(systemName: "plus.circle")
                }.tag(3)
            
            Text("Tab Label 4")
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.stack")
                        Text("Subscriptions")
                    }
                }.tag(4)
            Text("Tab Label 5")
                .tabItem {
                    VStack {
                        Image("library")
                        Text("Library")
                    }
                }.tag(5)
        }
    }
}

struct HomePageView : View {
    var body : some View {
        VStack {
            TopToolbar(notifications:10, newVideos: false)
            Spacer()
        }
    }
}

struct PlusView : View {
    var body: some View {
        
        VStack {
            Spacer()
            HStack{
                Text("Hello world")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

