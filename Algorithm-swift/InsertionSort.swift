//
//  InsertionSort.swift
//  Algorithm-swift
//
//  Created by Gu Jun on 8/17/16.
//  Copyright © 2016 Gu Jun. All rights reserved.
//

import Foundation

class InsertionSort {
    
    func sort(parameters: [Int]) -> [Int] {
        
        var array = parameters
        var k = 2
        while k < array.count {
            for i in 0...k-1 {
                if array[i] < array[k] {
                    continue
                }
                let tmp = array[k]
                for j in (i+1...k).reverse() {
                    array[j] = array[j-1]
                }
                array[i] = tmp
            }
            k += 1
        }
        return array
    }
}