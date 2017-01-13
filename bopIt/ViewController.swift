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
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        welcomeLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)

    }

    func die ()
    {
        let alert = UIAlertController (title: "You Lose :(", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let resetButton = UIAlertAction(title: "restart?", style: .default, handler:
            {(sender) in
            })
        alert.addAction(resetButton)
        present(alert, animated: true, completion: nil)
    }

}

