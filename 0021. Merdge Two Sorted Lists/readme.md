# Merge Two Sorted Linked Lists

This Ruby script merges two sorted linked lists. It takes two singly-linked lists, `list1` and `list2`, and returns a new sorted linked list that contains all the elements of both input lists.

## Function Description
```ruby
# Merges two sorted linked lists.
#
# @param {ListNode} list1 - The head of the first sorted linked list.
# @param {ListNode} list2 - The head of the second sorted linked list.
# @return {ListNode} - The head of the merged sorted linked list.
def merge_two_lists(list1, list2)
    # Function code here
end
```

## Usage
To use this script, you can call the merge_two_lists function, passing the heads of the two sorted linked lists (list1 and list2) as arguments. The function will return the head of the merged sorted linked list.

Example:
```ruby
# Create linked lists
list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))

result = merge_two_lists(list1, list2)
```
This will merge the two sorted linked lists list1 and list2 and store the result in the result variable.

## Algorithm
The merge_two_lists function uses a recursive approach to merge the two sorted linked lists. It compares the values of the current nodes in list1 and list2 and appends the smaller node to the merged list. The function continues recursively until one of the lists is exhausted, and then it appends the remaining elements from the other list.
