//
//  quicksort.swift
//  swift.first
//
//  Created by Ozan Asan on 7/20/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation


extension Int {
    static func getRandom(max: Int, min: Int) -> Int{
        let range : UInt32 = UInt32(max) - UInt32(min)
        var theRandom : Int = Int(arc4random_uniform(range))
        return theRandom + min - 1
    }
}


func partition(inout numbers : [Int], left : Int, right : Int) -> Int {
    var pivotIndex = left
    for index in (left + 1)...right{
        if(numbers[index] < numbers[pivotIndex]){
            (numbers[index], numbers[pivotIndex]) = (numbers[pivotIndex], numbers[index])
            (numbers[index], numbers[pivotIndex + 1]) = (numbers[pivotIndex + 1], numbers[index])
            pivotIndex++
        }
    }
    return pivotIndex
}

func quicksort(inout numbers : [Int], left : Int, right : Int) -> [Int]{
    if(left < right){
        var newPivot = partition(&numbers, left, right)
        quicksort(&numbers, left, newPivot - 1)
        quicksort(&numbers, newPivot + 1, right)
    }
    return numbers
}
