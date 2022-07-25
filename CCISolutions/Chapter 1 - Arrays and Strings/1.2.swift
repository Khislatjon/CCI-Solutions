//
//  1.2.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.2 Check permutation

func checkPermutation(one: String, two: String) -> Bool {
    var dictOne = [Character: Int]()
    var dictTwo = [Character: Int]()
    
    for ch in one {
        dictOne[ch, default: 0] += 1
    }
    for ch in two {
        dictTwo[ch, default: 0] += 1
    }
    
    for keyValue in dictOne {
        if dictOne[keyValue.key, default: 0] > dictTwo[keyValue.key, default: 0] {
            return false
        }
    }
    return true
}
//print(checkPermutation(one: "iisX", two: "Xiislat"))
