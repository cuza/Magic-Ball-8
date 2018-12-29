//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Dave Cuza on 2018-12-29.
//  Copyright © 2018 Cuza's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImage: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        updateUI()

    }

    @IBAction func shakeMeButtonPressed(_ sender: Any) {
        updateUI()
    }

    private func updateUI() {
        magicBallImage.image = UIImage(named: "ball\(Int.random(in: 1...5))")
    }
}

