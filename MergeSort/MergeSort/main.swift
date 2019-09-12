//
//  main.swift
//  MergeSort
//
//  Created by a on 2019/9/12.
//  Copyright © 2019 Gu Jun. All rights reserved.
//
//  reference: 趣学算法 3.3.5 P111
//

func merge(_ nums: inout [Int], _ low: Int, _ mid: Int, _ high: Int) {
    var aux = Array.init(repeating: 0, count: high - low + 1)
    var i = low
    var j = mid + 1
    var k = 0
    while i <= mid && j <= high {
        if nums[i] <= nums[j] {
            aux[k] = nums[i]
            i += 1
            k += 1
        } else {
            aux[k] = nums[j]
            j += 1
            k += 1
        }
    }

    while i <= mid {
        aux[k] = nums[i]
        k += 1
        i += 1
    }

    while j <= high {
        aux[k] = nums[j]
        k += 1
        j += 1
    }

    k = 0
    for i in low...high {
        nums[i] = aux[k]
        k += 1
    }
}

func mergesort(_ nums: inout [Int], _ low: Int, _ high: Int) {
    if low < high {
        let mid = (low + high) / 2
        mergesort(&nums, low, mid)
        mergesort(&nums, mid + 1, high)
        merge(&nums, low, mid, high)
    }
}

var nums = [42, 15, 20, 6, 8, 38, 50, 12]
mergesort(&nums, 0, nums.count - 1)
print(nums)
