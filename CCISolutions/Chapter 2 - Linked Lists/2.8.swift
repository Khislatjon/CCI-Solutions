//
//  2.8.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 08/09/22.
//

import Foundation

// MARK: - CHAPETR 2: 2.8 Loop Detection

func cycleStartNode(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    
    var slow = head
    var fast = head
    
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            return slow
        }
    }
    return nil
}

func detectCycle(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    guard var intersect = cycleStartNode(head) else { return nil }
    var start = head
    
    while intersect !== start {
        start = start?.next
        if let next = intersect.next {
            intersect = next
        }
    }
    return start
}
