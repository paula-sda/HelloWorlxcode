//
//  PostsDataSource.swift
//  HelloWorld
//
//  Created by Student on 21/10/25.
//

import Foundation
import Alamofire

class PostsDataSource{
    
    func fetchPost(by id: Int, completion: @escaping (Result<Post, Error>) -> Void) {
        let url = "https://jsonplaceholder.typicode.com/posts/\(id)"
        
        AF.request(url).responseDecodable(of: Post.self) { response in
            
        }
        
    }

      
    }
  
    
    
