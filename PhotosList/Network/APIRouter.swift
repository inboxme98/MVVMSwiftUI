//
//  APIRouter.swift
//  MVVMSwiftUI
//
//  Created by Kumar on 29/01/23.
//

import Foundation
import Alamofire

public enum APIRouter : URLRequestConvertible {
   
    case getComments
    case getPhotos
    
    private var urlPath: String
    {
        switch self{
        case .getPhotos:
            return "https://jsonplaceholder.typicode.com/photos"
        case .getComments:
            return "https://jsonplaceholder.typicode.com/comments"
        }
    }
    
    private var method: HTTPMethod {
        switch self {
        case .getPhotos:
            return .get
            default :
               return .get
        }
    }
    
    public func asURLRequest() throws -> URLRequest {
        
        let url = try urlPath.asURL()
        var urlRequest = URLRequest(url: url)
        urlRequest.method = method
        return urlRequest
    }
    
    
    
    
}
