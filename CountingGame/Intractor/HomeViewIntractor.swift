//
//  HomeViewIntractor.swift
//  CountingGame
//
//  Created by Sujeet on 22/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

protocol HomeIntractorProtocol {
    init(with presentor : HomePresenterProtocal)
    func findScreen()
}

class HomeViewIntractor: HomeIntractorProtocol {
   
    func findScreen() {
        print("In Intractor")
        presentor.showOnScreen()
    }
    
    var presentor : HomePresenterProtocal
    
    required init(with presentor: HomePresenterProtocal) {
        self.presentor = presentor
    }
    
}
