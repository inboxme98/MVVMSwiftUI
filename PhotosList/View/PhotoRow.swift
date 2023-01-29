//
//  PhotoRow.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct PhotoRow: View {
    var photoModel : PhotoModel

    var body: some View {
        
        HStack{
         
            AsyncImage(url: URL(string: photoModel.thumbnailURL))
                .frame(width: 50,height: 50)
                .clipShape(Circle())
                .scaledToFit()

            Text(photoModel.title)
        }
    }
}

struct PhotoRow_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow(photoModel: PhotoModel(albumID: 1, id: 1, title: "NA", url: "NA", thumbnailURL: "NA"))
    }
}
