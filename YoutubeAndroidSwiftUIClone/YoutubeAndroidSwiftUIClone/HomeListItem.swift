//
//  HomeListItem.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 08/08/2021.
//

import Foundation
import SwiftUI



protocol HomeListItem: Identifiable {
    var id : String { get set }
    var type : HomeListItemType { get set }
//    var poll: Poll?
//    var title : String?
//    var dateUploaded : Date?
//    var views : Int?
//    var duration : Int? // in seconds , max integer value equates to 68 years
    
}

enum HomeListItemType {
    case advertisement
    case video
    case post
    case shorts
    case stories
}

struct Video {
    var title : String
    var channel : Channel
    
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

struct Poll {
    var channel: Channel
    
    var type: HomeListItemType
    
    var body: String

    var totalVotes : Int // Needs cloud function to compound
    var pollItems : [PollItem]

}

struct PollItem {
    var text : String
    var votes: Int
}

struct Advertisement : HomeListItem {
    var id = UUID().uuidString
    
    var type: HomeListItemType
    
    var title: String?
    
    var channel : Channel?
    var video : Video?
   
    
    //Test if hasVideo needs to be there, might be able to get that programatically
    // Advertisements have different behavior if a video is there, I.E. different banners/location
    
    var dateUploaded: Date?
    
    var views: Int?
    
    var duration: Int

}



enum AdvertisementType { //TODO change Advertisement model to facilitate these
    case app // "Install Now", blue banner, google play / app store image link to open a sheet in the app
     //  If video is present, Same as above but it links to youtube video instead, the install button also is present but its bigger
    case website // In app browser link
    case signup // In app browser link
    case location // In app browser link to google maps location
}

struct Post : HomeListItem {
  
    var id: String
    
    var type: HomeListItemType
    
    var channel : Channel
    
    var isSubscribed : Bool?
    var postType : PostType // switch for each type
    var body : String
    
    var imageURL : String?
    var poll : Poll?
    
    var comments : Int? // If 0, if nil, if > 0
    var likes : Int?
    var dislikes : Int?
    var dateUploaded : Date // Has to show in days ago
}



enum PostType {
    case image // if image show image
    case gif // if gif show gif in same way as image
    case text // if text just show text
    case poll // if poll just show poll
}

struct Channel{
    var channelName: String
    var channelImageURL: String
    
}
