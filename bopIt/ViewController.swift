//
//  ViewController.swift
//  bopIt
//
//  Created by Ryan Grogger on 1/11/17.
//  Copyright © 2017 Ryan Grogger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

