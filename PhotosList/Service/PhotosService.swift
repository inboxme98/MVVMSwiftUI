//
//  PhotoService.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 29/01/23.
//

import Foundation

protocol PhotosServiceProtocol{
    func getPhotos(completion: @escaping(Result<[PhotoModel], NetworkError>) -> Void)

}

class PhotosService : PhotosServiceProtocol{
    func getPhotos(completion: @escaping(Result<[PhotoModel], NetworkError>) -> Void) {
        RestAPIClient.getPhotos(completion: completion)
    }
    
    
}
