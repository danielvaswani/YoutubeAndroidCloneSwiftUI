//
//  ContentListView.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 10/08/2021.
//

import SwiftUI

struct ContentListView: View {
    
    let data = [
        Video(title: "Working with SwiftUI", channel: Channel(channelName: "Daniel Vaswani", channelImageURL: "https://www.youtube.com/channel/UC0tsMfRhl5kVatXMOirz-3g"), URL: "https://www.youtube.com/watch?v=ulQ--9gp05g", dateUploaded: Date(), duration: 45),
        Advertisement(duration: 45)
    ] as [ContentItem]
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView()
    }
}
