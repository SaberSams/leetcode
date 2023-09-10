
# 8. String to Integer (atoi)
# https://leetcode.com/problems/string-to-integer-atoi/
# @param {String} s
# @return {Integer}
def my_atoi(s)
  # remove leading whitespace
  s.chars.each do |char|
    if char == " "
      s = s[1..-1]
    else
      break
    end
  end

  # check for sign
  sign = 1
  if s[0] == "-"
    sign = -1
    s = s[1..-1]
  elsif s[0] == "+"
    s = s[1..-1]
  end

  # push the numbers onto a stack
  stack = []
  s.chars.each do |char|
    if char =~ /[0-9]/
      stack.push(char.ord - 48)
    else
      break
    end
  end

  # pop the numbers off the stack and multiply by 10^i then add
  magnitude = 0
  sum = 0
  until stack.empty?
    sum += sign * stack.pop * (10 ** (magnitude))
    magnitude += 1
    return 2 ** 31 - 1 if sum > 2 ** 31 - 1
    return -2 ** 31 if sum < -2 ** 31
  end

  # check for overflow
  return sum if sum < 2 ** 31 && sum > -2 ** 31

end
