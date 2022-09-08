//
//  1.9.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.9 String Rotation

func isRotation(s1: String, s2: String) -> Bool {
    guard s1.count == s2.count else { return false }
    return isSubstring(superStr: s1+s1, substring: s2)
}

func isSubstring(superStr: String, substring: String) -> Bool {
    return superStr.contains(substring)
}

// Test in main
//var matrix = [
//    [2, 5, 4, 7],
//    [6, 3, 1, 8],
//    [9, 2, 5, 6],
//    [8, 4, 0, 3]
//]
////rotate(matrix: &matrix)
////print(zeroMatrix(&matrix))
//
//print(isRotation(s1: "water", s2: "retwar"))
