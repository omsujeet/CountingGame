//
//  LoginViewController.swift
//  CountingGame
//
//  Created by Sujeet on 22/10/19.
//  Copyright © 2019 SujeetTesting. All rights reserved.
//

import UIKit

protocol HomeViewProtocol : class {
//    init(with intractor : HomeIntractorProtocol)
    func goToScreenName(_ screenName : String)
}


class HomeView: UIViewController , HomeViewProtocol{
    
    var intractor : HomeIntractorProtocol?
    
    @IBOutlet var lblName: UIView!
    
    
    func goToScreenName(_ screenName: String) {
        print("In View Controller")
        lblName.isHidden = false
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblName.isHidden = true
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        intractor?.findScreen()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
