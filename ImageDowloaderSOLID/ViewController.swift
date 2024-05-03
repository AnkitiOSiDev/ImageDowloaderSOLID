//
//  ViewController.swift
//  ImageDowloaderSOLID
//
//  Created by Ankit on 04/05/24.
//

import UIKit

class ViewController: UIViewController {
    lazy var caching = NSCacheImageCaching()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func photosAlbumDidClicked(_ sender: Any) {
        let imageLoader = ImageLoader(downloader: URLSessionImageDownloader(), caching: caching)
        let viewModel = ImagesViewModel(imageLoader: imageLoader)
        let viewController = ImagesViewController(viewModel: viewModel)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

