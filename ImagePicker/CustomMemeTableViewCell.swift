//
//  MemeTableCell.swift
//  ImagePicker
//
//  Created by Dan Pham on 10/19/18.
//  Copyright © 2018 Dan Pham. All rights reserved.
//

import UIKit

class CustomMemeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    let imageWidth: CGFloat = 60.0
    let imageHeight: CGFloat = 60.0
    
    func imageSetup() {
        let imageDimensions = CGRect(x: 0, y:0, width: imageWidth, height: imageHeight)
        memeImageView.frame = imageDimensions
        memeImageView.contentMode = .scaleAspectFill
    }
}
