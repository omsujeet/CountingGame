//
//  HomeViewPresenter.swift
//  CountingGame
//
//  Created by Sujeet on 22/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

protocol HomePresenterProtocal  {
    init(with view : HomeViewProtocol)
    func showOnScreen()
}
class HomeViewPresenter: HomePresenterProtocal {
    func showOnScreen() {
        print("In Presentor")
        view?.goToScreenName("Next")
    }

    weak var view : HomeViewProtocol?
    
    required init(with view: HomeViewProtocol) {
        self.view = view
    }

}
