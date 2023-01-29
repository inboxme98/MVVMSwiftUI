//
//  PhotoDetailView.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct PhotoDetailView: View {
    var photoModel : PhotoModel
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: photoModel.thumbnailURL))
                .frame(width: 150,height: 150)
                .clipShape(Circle())
                .scaledToFit()
            Text(photoModel.title)
            Spacer()
        }
        .padding(.all, 50)
        .navigationTitle("Photo Detail")
        
        
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photoModel: PhotoModel(albumID: 1, id: 1, title: "ABC", url: "222", thumbnailURL: "2323"))
    }
}
