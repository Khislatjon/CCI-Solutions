//
//  3.3.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/09/22.
//

import Foundation

// MARK: - CHAPETR 3: 3.3 Stack of Plates

class SetOfStacks {
    var arrays = [[Int]]()
    let threshold: Int
    
    init(_ threshold: Int) {
        self.threshold = threshold
    }
    
    var isEmpty: Bool {
        let lastStack = getLastStack()
        return lastStack.isEmpty
    }
    
    var count: Int {
        let lastStack = getLastStack()
        return lastStack.count
    }
    
    var peek: Int? {
        let lastStack = getLastStack()
        return lastStack.last
    }
    
    func push(_ newVal: Int) {
        for i in 0..<arrays.count {
            if arrays[i].count < threshold {
                arrays[i].append(newVal)
                return
            }
        }
        arrays.append([newVal])
    }
    
    func pop() -> Int? {
        let lastStack = getLastStack()
        if lastStack.isEmpty {
            let _ = arrays.popLast()
        }
        return arrays[arrays.count-1].popLast()
    }
    
    func getLastStack() -> [Int] {
        arrays.last ?? []
    }
}
