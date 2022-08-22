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

def find_median_of_a_sorted_array(a)
  return a[a.length / 2] if a.length.odd?

  a[a.length / 2] + a[a.length / 2 - 1] / 2.0
end

def main
  (print 'the median of [1,3] and [2] => ')
  print(find_median_of_a_sorted_array(merdge([1, 3], [2])))

  print 'the median of [1,2] and [3,4] => '
  print(find_median_of_a_sorted_array(merdge([1, 2], [3, 4])))
end

main if __FILE__ == $PROGRAM_NAME
__END__
