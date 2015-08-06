//
//  DetailMemeViewController.swift
//  MeMeChallenge
//
//  Created by Laura Calinoiu on 06/08/15.
//  Copyright © 2015 Apress. All rights reserved.
//

import UIKit

class DetailMemeViewController: UIViewController {

    var meme: MeMe!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        imageView.image = meme.memedImg
    }
  

}
