# This solution works by converting to a string reversing the string and then converting back to an integer.
#
# @param {Integer} x
# @return {Integer}
def reverse(x)
  if x.to_s.reverse.to_i > 2147483647
      return 0
  end
  if x >= 0
      return x.to_s.reverse.to_i
  end

  return ("-" + x.to_s.reverse).to_i
end
