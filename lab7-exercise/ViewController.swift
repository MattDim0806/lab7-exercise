//
//  ViewController.swift
//  lab7-exercise
//
//  Created by 楊皓麟 on 2023/4/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewContainer: UIView!
    @IBOutlet weak var tableViewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewContainer.isHidden = true
        let fruitNameArr = ["apple", "avocado", "banana", "cherries", "coconut", "grapes", "lemon", "orange", "peach", "pineapple", "strawberry", "tomato"]
        let userDefaults = UserDefaults.standard
        userDefaults.set(fruitNameArr, forKey: "fruitName")
        title = "demo table view"
    }
    @IBAction func switchBtnClick(_ btn: UIBarButtonItem) {
        if(btn.tag == 0){
            btn.tag = 1
            title = "collection table view"
        }
        else{
            btn.tag = 0
            title = "demo table view"
        }
        tableViewContainer.isHidden = !tableViewContainer.isHidden
        collectionViewContainer.isHidden = !collectionViewContainer.isHidden
    }
    

}

