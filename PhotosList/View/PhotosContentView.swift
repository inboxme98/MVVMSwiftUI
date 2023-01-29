//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct PhotosContentView: View {
    
    @ObservedObject var viewModel : PhotoViewModel = PhotoViewModel()
    var body: some View {
        
        NavigationView()
        {
            VStack{
                List{
                    ForEach(viewModel.photos) {
                        photoModel in
                        NavigationLink{
                            PhotoDetailView(photoModel: photoModel)
                        } label: {
                            PhotoRow(photoModel: photoModel)
                        }
                    }
                }
            }.onAppear{
                viewModel.fetchPhotos()
            }
            .navigationTitle("Photos List")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosContentView()
    }
}

