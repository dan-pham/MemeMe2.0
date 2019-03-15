//
//  CustomMemeCollectionViewCell.swift
//  ImagePicker
//
//  Created by Dan Pham on 10/20/18.
//  Copyright © 2018 Dan Pham. All rights reserved.
//

import UIKit

class CustomMemeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func imageSetup() {
        imageView.contentMode = .scaleAspectFit
    }
}
