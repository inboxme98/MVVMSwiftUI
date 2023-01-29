//
//  PhotoViewModel.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import Foundation

class PhotoViewModel : ObservableObject
{
    private var photosService : PhotosServiceProtocol
    init(photosService: PhotosServiceProtocol = PhotosService())
    {
        self.photosService = photosService
    }
    
    @Published var photos = [PhotoModel]()
    
    func fetchPhotos()
    {
        photosService.getPhotos { result in
            switch(result){
        case .failure(let error):
                print(error)
        case .success(let photos):
                self.photos = photos
        }
        }
}
}

