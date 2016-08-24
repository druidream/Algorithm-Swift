//
//  SelectionSort.swift
//  Algorithm-swift
//
//  Created by Gu Jun on 8/17/16.
//  Copyright © 2016 Gu Jun. All rights reserved.
//

import Foundation

class SelectionSort {
    
    func sort(param : Array<Int>) -> Array<Int> {
        var array = param;
        for k in 0 ..< array.count {
            var min_index = k
            var min = array[min_index]
            for index in k ..< array.count {
                let value = array[index]
                if value < min {
                    min = value
                    min_index = index;
                }
            }
            let tmp = array[k]
            array[k] = array[min_index]
            array[min_index] = tmp
        }
        return array
    }
}