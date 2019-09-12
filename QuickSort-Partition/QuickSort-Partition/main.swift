//
//  main.swift
//  QuickSort-Partition
//
//  Created by Gu Jun on 2019/9/11.
//  Copyright © 2019 Gu Jun. All rights reserved.
//
//  reference: 趣学算法 3.4.6 P121
//

import Foundation

func partition(_ r: inout [Int], _ low: Int, _ high: Int) -> Int {
    var i = low
    var j = high
    let pivot = r[low]
    while i < j {
        while i < j && r[j] > pivot {
            j -= 1
        }

        while i < j && r[i] <= pivot {
            i += 1
        }

        if i < j {
            r.swapAt(i, j)
            i += 1
            j -= 1
        }
    }

    if r[i] > pivot {
        r.swapAt(i - 1, low)
        return i - 1
    }

    r.swapAt(i, low)

    return i
}

func quicksort(_ r: inout [Int], _ low: Int, _ high: Int) {
    var mid: Int
    if low < high {
        mid = partition(&r, low, high)
        quicksort(&r, low, mid - 1)
        quicksort(&r, mid + 1, high)
    }
}

var nums = [30, 24, 5, 58, 18, 36, 12, 42, 39]
quicksort(&nums, 0, nums.count - 1)

print(nums)
