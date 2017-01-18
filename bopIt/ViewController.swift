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
    var commandArray = ["Bop It!", "Twist It!", "Pull It!"]
    
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
        newCommand()
    }

    func newCommand()
    {
        let arrayNumber : UInt32 = arc4random_uniform(2)
        switch arrayNumber {
        case 0:
            welcomeLabel.text = commandArray[0]
        case 1:
            welcomeLabel.text = commandArray[1]
        case 2:
            welcomeLabel.text = commandArray[2]
        default:
            break
        /******************************************
             set the death timer to 0 below
        *******************************************/
        
        
        
        /******************************************
             set the death timer to 0 above
        ******************************************/
        }
    }
    func die ()
    {
        let alert = UIAlertController (title: "You Lose :(", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let resetButton = UIAlertAction(title: "restart?", style: .default, handler:
            {(sender) in
                self.beginButton.isHidden = false
                self.bopItImageView.isHidden = true
            })
        alert.addAction(resetButton)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func twistItSwipeUp(_ sender: UISwipeGestureRecognizer)
    {
        switch welcomeLabel.text
        {
        case commandArray[0]?:
            die()
        case commandArray[1]?:
            newCommand()
        case commandArray[2]?:
            die()
        default:
            break
        }
    }
    @IBAction func twistItSwipeDown(_ sender: UISwipeGestureRecognizer)
    {
        switch welcomeLabel.text
        {
        case commandArray[0]?:
            die()
        case commandArray[1]?:
            newCommand()
        case commandArray[2]?:
            die()
        default:
            break
        }
    }
    
    @IBAction func pullItSwipeRight(_ sender: UISwipeGestureRecognizer)
    {
        switch welcomeLabel.text
        {
        case commandArray[0]?:
            die()
        case commandArray[1]?:
            die()
        case commandArray[2]?:
            newCommand()
        default:
            break
        }
    }
    @IBAction func bopItTapped(_ sender: UITapGestureRecognizer)
    {
        switch welcomeLabel.text
        {
        case commandArray[0]?:
            newCommand()
        case commandArray[1]?:
            die()
        case commandArray[2]?:
            die()
        default:
            break
        }
    }
    

}

