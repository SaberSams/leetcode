# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    temp = nil
    return list1 if list2.nil?()
    return list2 if list1.nil?()

    if list1.val < list2.val
        temp = list1
        temp.next = merge_two_lists(list1.next, list2)
    else
        temp = list2
        temp.next = merge_two_lists(list1, list2.next)
    end
    return temp
end