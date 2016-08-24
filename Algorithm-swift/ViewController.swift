//
//  ViewController.swift
//  Algorithm-swift
//
//  Created by Gu Jun on 8/17/16.
//  Copyright © 2016 Gu Jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let array : Array = [2,9,3,8,4,5,6,7,4,1]
        
//        let sorting = SelectionSort()
//        let sorting = BubbleSort()
        let sorting = InsertionSort()
        let result = sorting.sort(array)
        print(result)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

