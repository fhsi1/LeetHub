class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        c = {}
        for num in nums:
            if num in c.keys():
                c[num] = 2
            else:
                c[num] = 1
        
        for key, value in c.items():
            if value == 1:
                return key
