//
//  ViewController.swift
//  Target two
//
//  Created by Дмитрий Чепанов on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.backgroundColor = .red
        redView.layer.cornerRadius = 50
        redView.alpha = 0.3
        yellowView.backgroundColor = .yellow
        yellowView.layer.cornerRadius = 50
        yellowView.alpha = 0.3
        greenView.backgroundColor = .green
        greenView.layer.cornerRadius = 50
        greenView.alpha = 0.3
        buttonStart.layer.cornerRadius = 10
        buttonStart.backgroundColor = .systemBlue
    }
    
    @IBAction func startingButton(_ sender: UIButton) {
        buttonStart.setTitle("NEXT", for: .normal)
        //buttonStart.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        //почему-то не работает
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
        } else if yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if greenView.alpha != 1 && redView.alpha != 1{
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
// не смог понять почему такой вариант не работает :(
//
//        if redView.alpha == 0.3 &&
//            yellowView.alpha == 0.3 &&
//            greenView.alpha == 0.3 {
//            redView.alpha = 1
//        } else if redView.alpha == 1 &&
//                    yellowView.alpha == 0.3 &&
//                    greenView.alpha == 0.3{
//            redView.alpha = 0.3
//            yellowView.alpha = 1
//        } else if yellowView.alpha == 1 {
//            yellowView.alpha = 0.3
//            greenView.alpha = 1
//        } else if redView.alpha == 0.3 &&
//                    yellowView.alpha == 0.3 &&
//                    greenView.alpha == 1 {
//            greenView.alpha = 0.3
//        }
    }
    

}

//
