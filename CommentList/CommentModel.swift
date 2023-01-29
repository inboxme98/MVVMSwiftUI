//
//  CommentModel.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 29/01/23.
//

import Foundation

struct CommentModel: Codable, Identifiable {
    let postID, id: Int?
    let name, email, body: String?

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}


