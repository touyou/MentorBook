//
//  ViewController.swift
//  MentorBook
//
//  Created by 藤井陽介 on 2020/06/28.
//  Copyright © 2020 touyou. All rights reserved.
//

import UIKit

//
class ViewController: UIViewController {

    //
    @IBOutlet var imageView: UIImageView!
    //
    @IBOutlet var courseLabel: UILabel!
    //
    @IBOutlet var nameLabel: UILabel!

    //
    var currentIndex: Int = 0
    //
    let mentorArray: [Mentor] = [
        Mentor(name: "Steve Jobs", course: "Founder", imageName: "steve"),
        Mentor(name: "Tim Cook", course: "CEO", imageName: "tim"),
        Mentor(name: "Craig Federighi", course: "Engineer", imageName: "craig")
    ]

    //
    override func viewDidLoad() {
        super.viewDidLoad()

        //
        setUI()
    }

    //
    @IBAction func touchUpInsideBackButton() {
        //
        currentIndex -= 1
        //
        validateIndex()
        //
        setUI()
    }

    //
    @IBAction func touchUpInsideNextButton() {
        //
        currentIndex += 1
        //
        validateIndex()
        //
        setUI()
    }

    //
    func setUI() {
        //
        imageView.image = mentorArray[currentIndex].getImage()
        //
        courseLabel.text = mentorArray[currentIndex].course
        //
        nameLabel.text = mentorArray[currentIndex].name
    }

    //
    func validateIndex() {
        //
        if currentIndex >= mentorArray.count {
            currentIndex = 0
        //
        } else if currentIndex < 0 {
            currentIndex = mentorArray.count - 1
        }
    }
}

