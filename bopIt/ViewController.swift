//
//  ViewController.swift
//  bopIt
//
//  Created by Ryan Grogger on 1/11/17.
//  Copyright © 2017 Ryan Grogger. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var bopItImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var beginButton: UIButton!
    
    var deathTimer = Timer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        welcomeLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        beginButton.transform = CGAffineTransform (rotationAngle: CGFloat.pi / 2)
        bopItImageView.isHidden = true
    }
    @IBAction func beginButtonPressed(_ sender: Any)
    {
        beginButton.isHidden = true
        bopItImageView.isHidden = false
    }

    func die ()
    {
        let alert = UIAlertController (title: "You Lose :(", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let resetButton = UIAlertAction(title: "restart?", style: .default, handler:
            {(sender) in
                self.beginButton.isHidden = false
            })
        alert.addAction(resetButton)
        present(alert, animated: true, completion: nil)
    }

}

