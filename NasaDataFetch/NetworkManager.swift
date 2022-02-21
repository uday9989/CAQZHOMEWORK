//
//  NetworkManager.swift
//  NasaDataFetch
//
//  Created by Created by udayvanaparthy on 2/19/22.

import Foundation
import UIKit

struct Movies: Codable {

    var results:[NewMovies]?

}

struct NewMovies: Codable {
    
     let overview: String?
     var title: String?
    let poster_path: String?
   
    
}

class NetworkManager {
    
    func getJson(completion: @escaping ([NewMovies])-> ()) {
        let urlString = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1&api_key=6622998c4ceac172a976a1136b204df4"
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) {data, res, err in
                if let data = data {
                    
                    let decoder = JSONDecoder()
                    do {
                        let json: Movies = try decoder.decode(Movies.self, from: data)
                        if let movies = json.results {
                            completion(movies)
                        }
                    }catch let error {
                        print(error.localizedDescription)
                    }
                }
            }.resume()
        }
    }
    
}


