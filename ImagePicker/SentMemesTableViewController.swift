//
//  SentMemesTableViewController.swift
//  ImagePicker
//
//  Created by Dan Pham on 10/6/18.
//  Copyright © 2018 Dan Pham. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {

    // MARK: Meme Setup
    
    var memes: [Meme]!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // MARK: IBOutlet
    
    @IBOutlet var sentMemesTableView: UITableView!
    
    // MARK: ViewController Override Method
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
    // MARK: UITableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "CustomMemeTableViewCell", for: indexPath) as! CustomMemeTableViewCell
        let meme = memes[indexPath.row]
        
        tableCell.topLabel?.text = meme.topText
        tableCell.bottomLabel?.text = meme.bottomText
        tableCell.memeImageView.image = meme.memedImage
        tableCell.imageSetup()
        
        return tableCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "SentMemesDetailViewController") as! SentMemesDetailViewController
        
        detailController.memes = self.memes[indexPath.row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
