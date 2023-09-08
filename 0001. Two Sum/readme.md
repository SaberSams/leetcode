# Two Sum Problem with Memoization

This Java code provides a solution to the Two Sum problem using memoization. Given an array of integers `nums` and an integer `target`, the goal is to find two numbers in the array such that they add up to the `target`.

## Function Description

```java
// Finds two numbers in an array that add up to a target using memoization.
//
// @param nums - An array of integers.
// @param target - The target sum.
// @return - An array containing the indices of the two numbers that add up to the target.
public int[] twoSum(int[] nums, int target) {
    // Function code here
}
```

```ruby
# Finds two numbers in an array that add up to a target.
#
# @param {Integer[]} nums - An array of integers.
# @param {Integer} target - The target sum.
# @return {Integer[]} - An array containing the indices of the two numbers that add up to the target.
def two_sum(nums, target)
    # Function code here
end
```

## Usage
### java
To use this code, you can call the twoSum function, passing the array nums and the target integer target as arguments. The function will return an array containing the indices of the two numbers that add up to the target.

Example:
```java
int[] nums = {2, 7, 11, 15};
int target = 9;
int[] result = twoSum(nums, target);
System.out.println(Arrays.toString(result));
```
This will find and print the indices of the two numbers in the nums array that add up to the target.

### ruby
To use this script, you can call the two_sum function, passing the array nums and the target integer target as arguments. The function will return an array containing the indices of the two numbers that add up to the target.

Example:
```ruby
nums = [2, 7, 11, 15]
target = 9
result = two_sum(nums, target)
puts result.inspect
```

## Algorithm
The twoSum function uses a HashMap to store the elements of the input array along with their corresponding indices. It iterates through the array, and for each element nums[i], it checks if target - nums[i] exists in the HashMap. If it does, it means a pair of elements has been found that adds up to the target, and their indices are returned.