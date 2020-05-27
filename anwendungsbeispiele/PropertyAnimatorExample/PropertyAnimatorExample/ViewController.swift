//
//  ViewController.swift
//  PropertyAnimatorExample
//
//  Created by Lisa Haas on 23.05.20.
//  Copyright © 2020 Lisa Haas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let animate = UIViewPropertyAnimator(duration: 5.0, curve: .linear)
    
    @IBOutlet weak var plane: UIImageView!
    @IBOutlet weak var cloudImgView3: UIImageView!
    @IBOutlet weak var cloudImageView4: UIImageView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialPlane()
        animatePlane()
        animateClouds()
    }
    
    
    func initialPlane(){
        self.plane.alpha = 0
    }
    
    
    func animatePlane(){
        animate.addAnimations {
            self.plane.alpha = 1
        }
        
        animate.addAnimations({
            self.plane.frame.size.height *= 1.6
            self.plane.frame.size.width *= 1.6
            self.plane.frame = self.self.plane.frame.offsetBy(dx: 650, dy: 10)
        },delayFactor: 0.5)
        
        animate.addCompletion{_ in
            print("Ready")
        }
    }
    

    private func animateClouds() {
       // UIView.animate Beispiele
        let options: UIView.AnimationOptions = [.curveEaseInOut,
        .repeat,
        .autoreverse]

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
    
    
    @IBAction func startAnimateUIButton(_ sender: UIButton) {
        animate.startAnimation()
    }
    
}

