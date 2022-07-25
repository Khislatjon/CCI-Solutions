//
//  1.5.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.5 One Away

func isOneAway(one: String, two: String) -> Bool {
    guard abs(one.count - two.count) < 2 else { return false }
    
    var foundDifference = false
    let s1 = one < two ? one : two
    let s2 = one < two ? two : one
    
    var index1 = 0
    var index2 = 0
    
    while index1 < s1.count && index2 < s2.count {
        if s1[index1] != s2[index2] {
            // Check whether it is the second difference
            if foundDifference {
                return false
            }
            foundDifference = true
            
            if s1.count == s2.count {
                index1 += 1     // On replace move shorter pointer
            }
        } else {
            index1 += 1         // If matching move shorter pointer
        }
        index2 += 1             // Always move longer string index
    }
    return true
}
//print("isOneWay = \(isOneAway(one: "ne", two: "on"))")
