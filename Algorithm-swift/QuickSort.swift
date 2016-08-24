//
//  QuickSort.swift
//  Algorithm-swift
//
//  Created by Gu Jun on 8/17/16.
//  Copyright © 2016 Gu Jun. All rights reserved.
//

import Foundation

class QuickSort {
    
//    func sort(array : NSMutableArray) -> NSMutableArray {
//        var i = 0
//        var j = array.count
//        while i != j {
//            if i < j && array.objectAtIndex(i).integerValue > array.objectAtIndex(j).integerValue {
//                array.exchangeObjectAtIndex(i, withObjectAtIndex: j)
//                (i, j) = (j, i)
//                j += 1
//            } else if i > j && array.objectAtIndex(j).integerValue > array.objectAtIndex(i).integerValue {
//                array.exchangeObjectAtIndex(i, withObjectAtIndex: j)
//                (i, j) = (j, i)
//                j -= 1
//            }
//        }
//        let subarray1 = array.subarrayWithRange(NSMakeRange(0, i - 1)) as NSArray
//        let subarray2 = array.subarrayWithRange(NSMakeRange(i + 1, array.count - i)) as NSArray
//        
////        return NSMutableArray(array: self.sort(subarray1.mutableCopy() as! NSMutableArray)).arrayByAddingObjectsFromArray(self.sort(subarray2.mutableCopy() as! NSMutableArray) as [AnyObject]) as ([AnyObject])
//        return nil
//    }
}