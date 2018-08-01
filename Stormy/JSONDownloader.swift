//
//  JSONDownloader.swift
//  Stormy
//
//  Created by Fiona Podrima on 8/1/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    func jsonTask(with request: URLRequest) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            
        }
        
        return task
    }
}
