//
//  2.2.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/08/22.
//

import Foundation

// MARK: - CHAPETR 2: 2.2 Find Kth to last

func findKthToLast(k: Int, head: Node?) -> Node? {
    var first = head
    var second = head
    var n = k
    
    while n != 0 {
        guard first != nil else { return nil }
        first = first?.next
        n -= 1
    }
    
    while first != nil {
        first = first?.next
        second = second?.next
    }
    return second
}

// Test in main
//let six = Node(val: 4)
//let five = Node(val: 3, next: six)
//let four = Node(val: 5, next: five)
//let three = Node(val: 2, next: four)
//let two = Node(val: 7, next: three)
//let one = Node(val: 2, next: two)
//
//var resultHead = findKthToLast(k: 10, head: one)
//print(resultHead?.val as Any)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}
