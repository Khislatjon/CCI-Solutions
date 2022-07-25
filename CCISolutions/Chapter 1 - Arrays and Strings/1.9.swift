//
//  1.9.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.0 String Rotation

func isRotation(s1: String, s2: String) -> Bool {
    guard s1.count == s2.count else { return false }
    return isSubstring(superStr: s1+s1, substring: s2)
}

func isSubstring(superStr: String, substring: String) -> Bool {
    return superStr.contains(substring)
}
