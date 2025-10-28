//
//  PostsDataSource.swift
//  HelloWorld
//
//  Created by Student on 21/10/25.
//

import Foundation
import Alamofire

class PostsDataSource{
    
    //un solo post
    /*func fetchPost(by id: Int, completion: @escaping (Result<Post, Error>) -> Void) {
        let url = "https://jsonplaceholder.typicode.com/posts/"
        
        AF.request(url).responseDecodable(of: Post.self) { response in
                switch response.result {
                case .success(let post):
                    completion(.success(post))
                case .failure(let error):
                    completion(.failure(error))
                    
                }
                
            }
            
        }*/
    
    func fetchPosts(completion: @escaping (Result<[Post], Error>) -> Void) {
        let url = "https://jsonplaceholder.typicode.com/posts"
        
        AF.request(url).responseDecodable(of: [Post].self) { response in
            switch response.result {
            case .success(let posts):
                completion(.success(posts))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

        
    }

      
  
    
    
