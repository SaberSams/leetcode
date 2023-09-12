# @param {String} s
# @return {Integer}
def min_deletions(s)
  char_counts = s.chars
  .group_by{|x| x}
  .map{|k, v| v.size}
  .sort

  count = 0
  loop do
    done = true
    (0...char_counts.length - 1).each do |i|
      if char_counts[i] == char_counts[i + 1]
        count += 1
        done = false
        if char_counts[i] == 1
          char_counts.delete_at(i)
          break
        else
          char_counts[i] -= 1
        end
      end
    end
    break if done
  end
  count
end


if __FILE__ == $0



  puts "------------------------------------"
  print "Case 1: ", min_deletions("aab") == 0 ? "PASS" : "FAIL", "\n"
  print "Case 2: ", min_deletions("aaabbbcc") == 2 ? "PASS" : "FAIL", "\n"
  print "Case 3: ", min_deletions("ceabaacb") == 2 ? "PASS" : "FAIL", "\n"
  print "Case 4: ", min_deletions("bbcebab") == 2 ? "PASS" : "FAIL", "\n"
  print "Case 5: ", min_deletions("adec") == 3 ? "PASS " : "FAIL ", "\n"
  print "Case 6: ", min_deletions("abcabc") == 3 ? "PASS" : "FAIL", "\n"
end
