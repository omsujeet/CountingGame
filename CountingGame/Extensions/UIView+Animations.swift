//
//  UIView+Animations.swift
//  CountingGame
//
//  Created by Sujeet on 23/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

enum Direction
{
    case left
    case right
    case top
    case bottom
}

extension UIView
{
    func animate(toView view : UIImageView , imageName : String, direction : Direction)  {
        let toImage = UIImage(named: imageName)
        UIView.transition(with: view,
                          duration: 1.3,
                          options: .transitionFlipFromLeft,
                          animations: {
                              view.image = toImage
                          },
                          completion: nil)
    }
}
