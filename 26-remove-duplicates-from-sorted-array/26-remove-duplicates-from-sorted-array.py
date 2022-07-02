class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        cnt = 0
        while cnt < len(nums) - 1:
            if nums[cnt] == nums[cnt + 1]:
                nums.remove(nums[cnt])
            else:
                cnt += 1
        return len(nums)