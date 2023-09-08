# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}


def two_sum(nums, target)
	for a in (0...nums.length - 1)
		for b in (nums.length - 1).downto(a+1)
			if(nums[a] + nums[b] == target)
				return [a, b]
			end
		end
	end
end