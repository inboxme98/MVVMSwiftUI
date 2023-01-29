//
//  PhotoModel.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import Foundation

// MARK: - Welcome
struct PhotoModel: Codable, Identifiable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}

