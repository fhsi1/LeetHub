class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        cnt = 0
        maj = 0
        for i in nums:
            if cnt == 0:
                maj = i
            cnt += 1 if maj == i else -1
        return maj