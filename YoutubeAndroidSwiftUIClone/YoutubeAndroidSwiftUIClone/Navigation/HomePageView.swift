//
//  HomePageView.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 10/08/2021.
//

import SwiftUI

struct HomePageView : View {
    var body : some View {
        VStack {
            TopToolbar(notifications:10, newVideos: false)
            Spacer()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
