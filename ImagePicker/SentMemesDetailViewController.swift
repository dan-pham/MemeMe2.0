//
//  SentMemesDetailViewController.swift
//  ImagePicker
//
//  Created by Dan Pham on 10/20/18.
//  Copyright © 2018 Dan Pham. All rights reserved.
//

import UIKit

class SentMemesDetailViewController: UIViewController {
    
    // MARK: Meme Setup
    
    var memes: Meme!
    
    // MARK: IBOutlet
    
    @IBOutlet weak var memedImageView: UIImageView!
    
    // MARK: ViewController Override Method
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(SentMemesDetailViewController.startMemeEditorViewController))
    memedImageView.image = memes.memedImage
    }
    
    // MARK: MemeEditorViewController Method
    
    @objc func startMemeEditorViewController() {
        let memeEditorViewController = self.storyboard!.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        
        memeEditorViewController.modalPresentationStyle = .fullScreen
        self.present(memeEditorViewController, animated: true, completion: nil)
        
        memeEditorViewController.topTextField.text = memes.topText
        memeEditorViewController.bottomTextField.text = memes.bottomText
        memeEditorViewController.imagePickerView.image = memes.originalImage
        memeEditorViewController.isEditing = true
    }
    
    
}
