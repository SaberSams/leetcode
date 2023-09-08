# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

# Merdges two sorted arrays into one sorted array
def merdge(a, b)
  c = []
  i = 0
  j = 0

  # while A and B both have elements left
  # add the smaller element to C
  until i == a.length || j == b.length
    if a[i] < b[j]
      c << a[i]
      i += 1
    else
      c << b[j]
      j += 1
    end
  end

  # add the remaining elements of A to C
  until i >= a.length
    c << a[i]
    i += 1
  end

  # add the remaining elements of B to C
  until j >= b.length
    c << b[j]
    j += 1
  end
  c
end

def find_median_sorted_arrays(nums1, nums2)
    nums3 = merdge(nums1, nums2)
    mid = nums3.length / 2
    nums3.length.odd? ? nums3[mid].to_f : 0.5 * (nums3[mid].to_f + nums3[mid - 1].to_f)
end