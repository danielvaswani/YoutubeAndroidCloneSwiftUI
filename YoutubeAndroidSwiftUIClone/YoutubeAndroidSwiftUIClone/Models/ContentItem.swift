//
//  HomeListItem.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 08/08/2021.
//

import Foundation
import SwiftUI


// ContentItem: Identifiable {
//    var id = UUID().uuidString
//    var type : ContentType
////    var poll: Poll?
////    var title : String?
////    var dateUploaded : Date?
////    var views : Int?
////    var duration : Int? // in seconds , max integer value equates to 68 years
//    init(type: ContentType) {
//        self.type = type
//    }
//}

enum ContentType {
    case adpost
    case video
    case post
    case shorts
    case stories
}

struct Video {

    var title : String
    var channel : Channel
    
    //var isAd : Bool
    var URL : String
    var views : Int?
    var dateUploaded : Date?
    var duration : Int
    
    
}

struct Shorts {
    //TODO
}

struct ShortsItem {
    //TODO
}

struct Story {
    //TODO
}

struct StoryItem {
    //TODO
}


//class Advertisement : ContentItem {
//    var adTitle: String?
//    var link : String?
//
//    var video : Video?
//
//    //Test if hasVideo needs to be there, might be able to get that programatically
//    // Advertisements have different behavior if a video is there, I.E. different banners/location
//
//    init(adTitle : String, link : String){
//        super.init(type: ContentType.advertisement)
//        self.link = link
//        self.adTitle = adTitle
//    }
//
//    init(video : Video){
//        super.init(type: ContentType.advertisement)
//        self.video = video
//    }
//}



//enum AdvertisementType { //TODO change Advertisement model to facilitate these
//    case app // "Install Now", blue banner, google play / app store image link to open a sheet in the app
//     //  If video is present, Same as above but it links to youtube video instead, the install button also is present but its bigger
//    case website // In app browser link
//    case signup // In app browser link
//    case location // In app browser link to google maps location
//}



struct Channel{
    var channelName: String
    var channelImageURL: String
    var isSubscribed = false
}
