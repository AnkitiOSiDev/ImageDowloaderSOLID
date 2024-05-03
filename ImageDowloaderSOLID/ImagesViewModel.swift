//
//  ImagesViewModel.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import Foundation
import UIKit

class ImagesViewModel {
    private let imageLoader: ImageLoader
    private var items: [ImageModel] = []

    init(imageLoader: ImageLoader) {
        self.imageLoader = imageLoader
        
        let imageURLs = [
            URL(string: "https://picsum.photos/200/300"),
            URL(string: "https://picsum.photos/id/237/200/300"),
            URL(string: "https://picsum.photos/seed/picsum/200/300")
        ]
        self.items = imageURLs.compactMap{$0}.map { ImageModel(imageURL: $0) }
    }

    func loadImage(for indexPath: IndexPath, completion: @escaping (UIImage?) -> Void) {
        let item = items[indexPath.row]
        imageLoader.loadImage(from: item.imageURL, completion: completion)
    }

    func numberOfItems() -> Int {
        return items.count
    }
}
