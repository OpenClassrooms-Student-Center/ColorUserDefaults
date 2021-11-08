//
//  ViewController.swift
//  ColorUserDefaults
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        displaySelectedColor()
    }

    private func displaySelectedColor() {
        switch Color.selected {
        case "Rouge":
            view.backgroundColor = UIColor.red
        case "Bleu":
            view.backgroundColor = UIColor.blue
        case "Vert":
            view.backgroundColor = UIColor.green
        default:
            break
        }
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        view.backgroundColor = sender.backgroundColor
        Color.selected = sender.titleLabel!.text!
    }

}

