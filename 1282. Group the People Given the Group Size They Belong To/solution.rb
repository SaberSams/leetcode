# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  group_hash = {}
  group_sizes.each_with_index do |size, index|
    group_hash[size] = (group_hash[size] || []) << index
  end
  group_hash.map do |size, indexes|
    indexes.each_slice(size).to_a
  end.flatten(1)
end



[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].each do |x , itx|
  x + x
end
