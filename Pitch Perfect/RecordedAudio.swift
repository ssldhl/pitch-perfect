//
//  RecordedAudio.swift
//  Pitch Perfect
//
//  Created by Sushil Dahal on 10/20/15.
//  Copyright © 2015 Sushil Dahal. All rights reserved.
//

import Foundation
class RecordedAudio: NSObject{
    var filePathURL: NSURL!
    var title: String!
    
    init(filePathURL:NSURL, title:String){
        self.filePathURL = filePathURL
        self.title = title
    }
}