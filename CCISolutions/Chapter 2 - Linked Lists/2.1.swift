//
//  2.1.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/07/22.
//

import Foundation

// MARK: - CHAPETR 2: 2.1 Remove Duplicates

func removeDups(head: Node?) -> Node? {
    var visitedNodes = Set<Int?>()
    var prev: Node? = nil
    var node = head
    
    while node != nil {
        if visitedNodes.contains(node?.val) {
            prev?.next = node?.next
        } else {
            visitedNodes.insert(node?.val)
            prev = node
        }
        node = node?.next
    }
    return head
}

// If no buffer given
func removeDups2(head: Node?) -> Node? {
    var node = head
    
    while node != nil {
        var checker = node
        while checker?.next != nil {
            if checker?.next?.val == node?.val {
                checker?.next = checker?.next?.next
            } else {
                checker = checker?.next
            }
        }
        node = node?.next
    }
    return head
}

// Test in main
//let six = Node(val: 4)
//let five = Node(val: 3, next: six)
//let four = Node(val: 3, next: five)
//let three = Node(val: 2, next: four)
//let two = Node(val: 2, next: three)
//let one = Node(val: 2, next: two)
//
//var resultHead = removeDups2(head: one)
//while resultHead != nil {
//    print(resultHead?.val as Any)
//    resultHead = resultHead?.next
//}

