# String to Integer (atoi)

This Ruby script converts a string to an integer.
## Function Descriptions
```ruby
def my_atoi(str)
# code here
end

```

## Usage
to use this function call it with a string argument

Example:
```ruby
str = "12345"
result = my_atoi(str)
puts result
```
this will convert a string to an integer and print the result.

## Algorithm
this function works by first stripping off leading `" "` characters, then checking for a `+` or `-` sign. If a sign is found it is saved and removed from the string. Then the function iterates through the string, converting each character to an integer and adding it to the result. If the result is greater than `2**31 - 1` or less than `-2**31` the function returns `2**31 - 1` or `-2**31` respectively. If no sign is found the function assumes a positive integer.
