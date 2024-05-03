//
//  ImageDownloader.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import Foundation
import UIKit

protocol ImageDownloader {
    func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void)
}
