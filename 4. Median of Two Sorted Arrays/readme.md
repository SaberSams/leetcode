# Merge and Find Median of Sorted Arrays

This Ruby script merges two sorted arrays into one sorted array and calculates the median of the merged array.

## Function Descriptions

### Merge Function

```ruby
# Merges two sorted arrays into one sorted array.
#
# @param {Integer[]} a - The first sorted array.
# @param {Integer[]} b - The second sorted array.
# @return {Integer[]} - The merged and sorted array.
def find_median_sorted_arrays(nums1, nums2)
    nums3 = merdge(nums1, nums2)
    mid = nums3.length / 2
    nums3.length.odd? ? nums3[mid].to_f : 0.5 * (nums3[mid].to_f + nums3[mid - 1].to_f)
end
```

## Usage
To use this script, you can call the find_median_sorted_arrays function, passing two sorted arrays as arguments. The function will return the median value of the merged sorted arrays.

Example:
```ruby
nums1 = [1, 3]
nums2 = [2]
result = find_median_sorted_arrays(nums1, nums2)
puts result
```
This will merge the two sorted arrays [1, 3] and [2], and then calculate and print the median.

## Algorithm
The merge function merges two sorted arrays a and b into one sorted array c by comparing and adding elements in a sorted order. The find_median_sorted_arrays function first merges the input sorted arrays using the merge function and then calculates the median of the merged array.