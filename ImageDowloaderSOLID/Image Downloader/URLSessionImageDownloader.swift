//
//  URLSessionImageDownloader.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import Foundation
import UIKit

class URLSessionImageDownloader: ImageDownloader {
    func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let image = UIImage(data: data)
            completion(image)
        }.resume()
    }
}
