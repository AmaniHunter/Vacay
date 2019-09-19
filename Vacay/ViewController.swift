//
//  ViewController.swift
//  Vacay
//
//  Created by Amani Hunter on 8/5/19.
//  Copyright © 2019 INAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]

    var randomImageIndex1: Int = 0
    
    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateRandomImage()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        updateRandomImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    updateRandomImage()
    }
    
    func updateRandomImage() {
        
        randomImageIndex1 = Int.random(in: 0 ... 11)
        
        
        
        imageView1.image = UIImage(named: imageArray[randomImageIndex1])
    }
    
}

