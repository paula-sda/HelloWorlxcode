//
//  Post.swift
//  HelloWorld
//
//  Created by Student on 21/10/25.
//

import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
