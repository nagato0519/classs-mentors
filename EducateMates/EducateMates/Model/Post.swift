//
//  Post.swift
//  EducateMates
//
//  Created by Nagato Kadoya on 12/6/21.
//

import Foundation

class Post: Identifiable{
    let id: String
    let name: String
    let body: String
    
    init(id: String, name: String, body: String){
        self.id = id
        self.name = name
        self.body = body
    }
}
