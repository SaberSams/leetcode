# 1647. Minimum Deletions to Make Character Frequencies Unique

A string s is called good if there are no two different characters in s that have the same frequency.

Given a string s, return the minimum number of characters you need to delete to make s good.

The frequency of a character in a string is the number of times it appears in the string. For example, in the string "aab", the frequency of 'a' is 2, while the frequency of 'b' is 1.

## Examples:

```
Input: s = "aab"
Output: 0
```

### Explanation: s is already good.

```
Input: s = "aaabbbcc"
Output: 2
```

### Explanation: You can delete two 'b's resulting in the good string "aaabcc".

```
Input: s = "ceabaacb"
Output: 2
```

### Explanation: You can delete both 'c's resulting in the good string "eabaab".

```

```
