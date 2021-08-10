//
//  Post.swift
//  YoutubeAndroidSwiftUIClone
//
//  Created by Daniel Vaswani on 10/08/2021.
//

import Foundation

class Post {
    var channel : Channel

    var body : String
    
    var postType : PostType
    
    
    var comments : Int?// If 0, if nil, if > 0
    var likes : Int?
    var dislikes : Int?
    var dateUploaded : Date  // Has to show in days ago
    
    init(channel : Channel, isSubscribed : Bool, body : String, dateUploaded : Date){
        self.channel = channel
        self.channel.isSubscribed = true
        self.body = body
        self.postType = PostType.text
        self.dateUploaded = dateUploaded
    }
    
    func addStats(likes: Int, dislikes: Int, comments : Int){
        self.likes = likes
        self.dislikes = dislikes
        self.comments = comments
    }
}

class Image : Post {
    var imageURL : String
    init(channel : Channel, isSubscribed : Bool, body : String, comments : Int? = nil,  likes: Int? = nil, dislikes: Int? = nil, dateUploaded : Date, imageURL: String){
        self.imageURL = imageURL
        super.init(channel: channel, isSubscribed: isSubscribed, body: body, dateUploaded: dateUploaded)
        super.postType = PostType.img
    }
    
}

class Poll : Post {
    var totalVotes : Int {
        var total = 0
        for poll in pollItems{
            total += poll.votes
        }
        return total
    }
    var pollItems : [PollItem]
    init(channel : Channel, isSubscribed : Bool, body : String, comments : Int? = nil,  likes: Int? = nil, dislikes: Int? = nil, dateUploaded : Date, pollItems: [PollItem]){
        self.pollItems = pollItems
        super.init(channel: channel, isSubscribed: isSubscribed, body: body, dateUploaded: dateUploaded)
        super.postType = PostType.img
    }
}

struct PollItem : Identifiable{
    var id = UUID().uuidString
    var text : String
    var votes: Int
}

enum PostType {
    case img
    case text // if text just show text
    case poll // if poll just show poll
}
