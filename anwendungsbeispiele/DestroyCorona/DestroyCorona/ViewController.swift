//
//  ViewController.swift
//  DestroyCorona
//
//  Created by Lisa Haas on 22.05.20.
//  Copyright © 2020 Lisa Haas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear)
    
    @IBOutlet weak var saveWorldLabel: UILabel!
    @IBOutlet weak var smallVirusImage: UIImageView!
    @IBOutlet weak var bigVirusImage: UIImageView!
    @IBOutlet weak var backgroundWorldUiImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureInitialSetup()
        configureEndAnimations()
    }
    
    func configureInitialSetup(){
        bigVirusImage.alpha = 1.0
        bigVirusImage.transform = CGAffineTransform(scaleX: 1, y: 1)
        
        smallVirusImage.alpha = 1.0
               smallVirusImage.transform = CGAffineTransform(scaleX: 1, y: 1)
        
        saveWorldLabel.alpha = 0.0
        saveWorldLabel.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
    }
    
   func configureEndAnimations() {
        animator.addAnimations {
            self.bigVirusImage.alpha = 0.0
            self.bigVirusImage.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
            
            self.smallVirusImage.alpha = 0.0
            self.smallVirusImage.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        }
    }
    
    @IBAction func valueChanged(_ sender: UISlider){
        animator.fractionComplete = CGFloat(sender.value)
    
        if sender.value == 1.0 {
            saveWorldLabel.alpha = 1.0
            saveWorldLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
        }else {
            saveWorldLabel.alpha = 0.0
            saveWorldLabel.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        }
    }
}

