//
//  BubbleSort.swift
//  Algorithm-swift
//
//  Created by Gu Jun on 8/17/16.
//  Copyright © 2016 Gu Jun. All rights reserved.
//

import Foundation

class BubbleSort {
    
    func sort(param: Array<Int>) -> Array<Int> {
        var array = param
        var k = 0
        while k < array.count - 1 {
            for index in (k + 1...array.count - 1).reverse() {
                if array[index] < array[index - 1] {
                    let tmp = array[index]
                    array[index] = array[index - 1]
                    array[index - 1] = tmp
                }
            }
            k += 1
        }
        return array
    }
}