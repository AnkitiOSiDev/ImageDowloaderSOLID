//
//  ImageLoader.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import Foundation
import UIKit

class ImageLoader {
    private let downloader: ImageDownloader
    private let caching: ImageCaching

    init(downloader: ImageDownloader, caching: ImageCaching) {
        self.downloader = downloader
        self.caching = caching
    }

    func loadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        if let cachedImage = caching.image(forKey: url.absoluteString) {
            completion(cachedImage)
            return
        }

        downloader.downloadImage(from: url) { [weak self] image in
            guard let self = self, let image = image else {
                completion(nil)
                return
            }
           
            self.caching.setImage(image, forKey: url.absoluteString)
            completion(image)
        }
    }
}
