//
//  main.swift
//  swift.first
//
//  Created by Ozan Asan on 7/20/15.
//  Copyright (c) 2015 Ozan Asan. All rights reserved.
//

import Foundation

var unsorted = [16, 10, 12, 7, 1, 4, 5, 9, 8, 6]

println("Before sort:")

for number in unsorted {
    println(number)
}

var sorted = quicksort(&unsorted, 0, unsorted.count - 1)

println("After sort:")

for number in sorted {
    println(number)
}
