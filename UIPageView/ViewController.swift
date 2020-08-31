//
//  ViewController.swift
//  UIPageView
//
//  Created by Vadim Dmitriev on 15.08.2020.
//  Copyright © 2020 Vadim Dmitriev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startPresentation()
    }

    func startPresentation() {
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "presentationWasViewed")
        if presentationWasViewed == false {
            if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
                present(pageViewController, animated: true, completion: nil)
        }
     }
   }
}

