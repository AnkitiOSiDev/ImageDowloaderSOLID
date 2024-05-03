//
//  NSCacheImageCaching.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import Foundation
import UIKit

class NSCacheImageCaching: ImageCaching {
    private let cache = NSCache<NSString, UIImage>()

    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }

    func image(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}
