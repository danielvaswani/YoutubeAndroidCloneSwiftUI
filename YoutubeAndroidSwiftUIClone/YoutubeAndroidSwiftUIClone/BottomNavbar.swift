//
//  BottomNavbar.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 08/08/2021.
//

import SwiftUI

struct BottomNavbar: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("Tab Label 1")
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
            Text("Tab Label 3")
                .tabItem {
                    VStack {
                        Image(systemName: "plus.circle")
                    }
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

struct BottomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavbar()
    }
}
