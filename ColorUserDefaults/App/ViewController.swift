//
//  ViewController.swift
//  ColorUserDefaults
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Properties

    private let color = Color()

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        displaySelectedColor()
    }

    // MARK: - Actions

    @IBAction private func changeColor(_ sender: UIButton) {
        view.backgroundColor = sender.backgroundColor
        color.selected = sender.titleLabel!.text!
    }

    // MARK: - Private

    private func displaySelectedColor() {
        switch color.selected {
        case "Rouge":
            view.backgroundColor = .red
        case "Bleu":
            view.backgroundColor = .blue
        case "Vert":
            view.backgroundColor = .green
        default:
            break
        }
    }
}
