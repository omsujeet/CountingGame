//
//  NumberCountingPresenter.swift
//  CountingGame
//
//  Created by Sujeet on 23/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

struct CountingData {
    let text : String
    let numberImage : String
    let descImage : String
    
}

protocol NumberPresenterProtocol  {
    init(with view : NumberViewProtocol)
    func show(withData data : (String , String))
}

class NumberPresenter: NumberPresenterProtocol {
    
    weak var view : NumberViewProtocol?
    
    required init(with view: NumberViewProtocol) {
        self.view = view
    }
    
    func show(withData data: (String, String)) {
        print("Presenter")
        let data = CountingData(text: data.0, numberImage: data.0, descImage: data.1)
        view?.changePageUi(withData: data)
    }
 
}
