//
//  ImageCaching.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import Foundation
import UIKit

protocol ImageCaching {
    func setImage(_ image: UIImage, forKey key: String)
    func image(forKey key: String) -> UIImage?
}
