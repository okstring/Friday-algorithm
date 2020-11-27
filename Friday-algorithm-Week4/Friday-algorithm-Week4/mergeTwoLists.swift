import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() {
        self.val = 0; self.next = nil;
    }
    public init(_ val: Int) {
        self.val = val; self.next = nil;
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next;
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil { return l2 }
    if l2 == nil { return l1 }
    
    var resultListNode: ListNode?
    var l1NextNode: ListNode?
    var l2NextNode: ListNode?
    var beforeNode: ListNode?
    
    if l1!.val > l2!.val {
        resultListNode = l2
        beforeNode = l2
        l2NextNode = resultListNode?.next
        l1NextNode = l1
        if let nextNode = resultListNode?.next {
            if l1!.val > nextNode.val {
                beforeNode = nextNode
                l2NextNode = beforeNode?.next
            } else {
                resultListNode?.next = l1
                beforeNode = l1
                l1NextNode = beforeNode?.next
            }
        } else {
            resultListNode?.next = l1
        }
    } else {
        resultListNode = l1
        beforeNode = l1
        l1NextNode = resultListNode?.next
        l2NextNode = l2
        if let nextNode = resultListNode?.next {
            if l2!.val > nextNode.val {
                beforeNode = nextNode
                l1NextNode = beforeNode?.next
            } else {
                resultListNode?.next = l2
                beforeNode = l2
                l2NextNode = beforeNode?.next
            }
        } else {
            resultListNode?.next = l2
        }
    }
    while l1NextNode != nil && l2NextNode != nil {
        
        if l1NextNode!.val > l2NextNode!.val {
            beforeNode?.next = l2NextNode
            beforeNode = l2NextNode
            l2NextNode = beforeNode?.next
        } else {
            beforeNode?.next = l1NextNode
            beforeNode = l1NextNode
            l1NextNode = beforeNode?.next
        }
        
    }
    
    if l1NextNode == nil && l2NextNode != nil {
        beforeNode?.next = l2NextNode
    } else if l2NextNode == nil && l1NextNode != nil {
        beforeNode?.next = l1NextNode
    }
    return resultListNode
}
