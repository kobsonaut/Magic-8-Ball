//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kobsonauta on 25.10.2017.
//  Copyright © 2017 Kobsonauta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallPicture: UIImageView!
    
    var ballAnswerRandomIndex: Int = 0
    let ballPictureArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        update8BallPicture()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        update8BallPicture()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        update8BallPicture()
    }

    func update8BallPicture() {
        ballAnswerRandomIndex = Int(arc4random_uniform(5))
        magicBallPicture.image = UIImage(named: ballPictureArray[ballAnswerRandomIndex])
    }
}

