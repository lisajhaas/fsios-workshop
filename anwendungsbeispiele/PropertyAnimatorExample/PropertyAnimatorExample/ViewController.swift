//
//  ViewController.swift
//  PropertyAnimatorExample
//
//  Created by Lisa Haas on 23.05.20.
//  Copyright © 2020 Lisa Haas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cloudImgView1: UIImageView!
    @IBOutlet weak var cloudImgView2: UIImageView!
    @IBOutlet weak var cloudImgView3: UIImageView!
    @IBOutlet weak var cloudImageView4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateClouds()
    }
        
    private func animateClouds() {
      let options: UIView.AnimationOptions = [.curveEaseInOut,
                                              .repeat,
                                              .autoreverse]
      
      UIView.animate(withDuration: 2.9,
                     delay: 0,
                     options: options,
                     animations: { [weak self] in
                      self?.cloudImgView1.frame.size.height *= 1.18
                      self?.cloudImgView1.frame.size.width *= 1.18
      }, completion: nil)
      
      UIView.animate(withDuration: 3.0,
                     delay: 0.2,
                     options: options,
                     animations: { [weak self] in
                        self?.cloudImgView2.frame.size.height *= 1.28
                      self?.cloudImgView2.frame.size.width *= 1.28
      }, completion: nil)
        
        UIView.animate(withDuration: 2.4,
                       delay: 0.1,
                       options: options,
                       animations: { [weak self] in
                        self?.cloudImgView3.frame.size.height *= 1.15
                        self?.cloudImgView3.frame.size.width *= 1.15
        }, completion: nil)
        
        UIView.animate(withDuration: 3.2,
                       delay: 0.5,
                       options: options,
                       animations: { [weak self] in
                        self?.cloudImageView4.frame.size.height *= 1.23
                        self?.cloudImageView4.frame.size.width *= 1.23
        }, completion: nil)
      
    }

}

