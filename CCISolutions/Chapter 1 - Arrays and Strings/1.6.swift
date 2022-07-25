//
//  1.6.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 23/07/22.
//

import Foundation

// MARK: - CHAPETR 1: 1.6 String compression

func compress(str: String) -> String {
    guard !str.isEmpty else { return "" }
    var compressedStr = ""
    var prev = str.first!
    var counter = 0
    
    for ch in str {
        if prev == ch {
            counter += 1
        } else {
            compressedStr.append("\(prev)\(counter)")
            counter = 1
        }
        prev = ch
    }
    compressedStr.append("\(prev)\(counter)")
    return compressedStr.count < str.count ? compressedStr : str
}
//print(compress(str: "aaaaaabcd"))
