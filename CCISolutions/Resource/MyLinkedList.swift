//
//  MyLinkedList.swift
//  CCISolutions
//
//  Created by Khislatjon Valijonov on 25/07/22.
//

import Foundation

public class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Node {
    var val: Int
    var next: Node?
    weak var prev: Node?
    
    init(val: Int, next: Node? = nil) {
        self.val = val
        self.next = next
    }
}

class MyLinkedList {
    var head: Node?
    var tail: Node?
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        if let node = self.nodeAt(index: index) {
            return node.val
        }
        return -1
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let newNode = Node(val: val)
        if let headNode = head {
            newNode.next = headNode
            headNode.prev = newNode
        } else {
            tail = newNode
        }
        head = newNode
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        let newNode = Node(val: val)
        if let tailNode = tail {
            newNode.prev = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        let newNode = Node(val: val)
        if index == 0 {
            newNode.next = head
            head?.prev = newNode
            head = newNode
        } else {
            let prev = self.nodeAt(index: index - 1)
            let next = prev?.next
            
            newNode.prev = prev
            newNode.next = next
            
            prev?.next = newNode
            next?.prev = newNode
            
            if newNode.next == nil {
                tail = newNode
            }
        }
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        let nodeToRemove = self.nodeAt(index: index)
        let prev = nodeToRemove?.prev
        let next = nodeToRemove?.next
        
        if index == 0 {
            let next = head?.next
            next?.prev = nil
            head = next
        } else if nodeToRemove?.next == nil && nodeToRemove != nil {
            prev?.next = nil
            tail = prev
        } else {
            nodeToRemove?.prev = nil
            nodeToRemove?.next = nil
            
            prev?.next = next
            next?.prev = prev
        }
    }
    
    func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    func removeNthFromEnd(_ head: Node?, _ n: Int) -> Node? {
        if head == nil {
            return nil
        }
        
        var node = head;
        var nodeCount = 1
        
        while node != nil {
            node = node?.next
            nodeCount += 1
        }
        
        node = head
        self.deleteAtIndex(nodeCount - n - 1)
        return nodeAt(index: 0)
    }
}

extension MyLinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.val)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

//let myLinkedList = MyLinkedList()
//print(myLinkedList)
//myLinkedList.addAtHead(2)
//print(myLinkedList)
//myLinkedList.deleteAtIndex(1)
//myLinkedList.addAtHead(2)
//print(myLinkedList)
//myLinkedList.addAtHead(7)
//print(myLinkedList)
//myLinkedList.addAtHead(3)
//print(myLinkedList)
//myLinkedList.addAtHead(2)
//print(myLinkedList)
//myLinkedList.addAtHead(5)
//print(myLinkedList)
//myLinkedList.addAtTail(5)
//print(myLinkedList)
//myLinkedList.get(5)
//print(myLinkedList)
//myLinkedList.deleteAtIndex(6)
//print(myLinkedList)
//myLinkedList.deleteAtIndex(4)
//print(myLinkedList)
//myLinkedList.removeNthFromEnd(myLinkedList.nodeAt(index: 0), 2)
//print(myLinkedList)
//
//
//["MyLinkedList","addAtHead","deleteAtIndex","addAtHead","addAtHead","addAtHead","addAtHead","addAtHead","addAtTail","get","deleteAtIndex","deleteAtIndex"]
//[[],[2],[1],[2],[7],[3],[2],[5],[5],[5],[6],[4]]

