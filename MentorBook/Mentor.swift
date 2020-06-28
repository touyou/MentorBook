//
//  Mentor.swift
//  MentorBook
//
//  Created by 藤井陽介 on 2020/06/28.
//  Copyright © 2020 touyou. All rights reserved.
//

import UIKit

//
class Mentor {
    //
    var name: String
    //
    var course: String
    //
    var imageName: String

    //
    init(name: String, course: String, imageName: String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }

    //
    func getImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
