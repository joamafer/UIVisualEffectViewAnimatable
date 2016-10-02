//
//  ViewController.swift
//  TestingBlurAnimation
//
//  Created by JOSE ANTONIO MARTINEZ FERNANDEZ on 02/10/2016.
//  Copyright © 2016 joamafer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var visualEffectView : UIVisualEffectView!
    @IBOutlet weak var blurButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        visualEffectView = UIVisualEffectView(frame: self.view.frame)
        visualEffectView.effect = .None
        view.addSubview(visualEffectView)
        view.bringSubviewToFront(blurButton)
    }

    // MARK: - Actions
    
    @IBAction func toggleBlur(sender: UIButton) {
        UIView.animateWithDuration(1) {
            self.visualEffectView.effect = sender.selected ? .None : UIBlurEffect(style: .Light)
        }
        
        sender.selected = !sender.selected
    }
}

