//
//  2.4.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 29/08/22.
//

import Foundation

// MARK: - CHAPETR 2: 2.4 Partition

func partition(_ head: Node?, _ x: Int) -> Node? {
    var node = head
    let dummyLeft: Node? = Node(val: 0)
    let dummyRight: Node? = Node(val: 0)
    var left = dummyLeft
    var right = dummyRight
    
    while node != nil {
        if node?.val ?? 0 < x {
            left?.next = node
            left = left?.next
        } else {
            right?.next = node
            right = right?.next
        }
        node = node?.next
    }
    
    left?.next = dummyRight?.next
    right?.next = nil
    return dummyLeft?.next
}
