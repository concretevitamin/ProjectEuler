# 837799
Len = [0] * 1000001

def length2(n):
    ans = 1
    if n % 2 == 1:
        if 3 * n + 1 > 1000000: ans += length2(3 * n + 1)
        else: ans += length(3 * n + 1)
    else:
        if n / 2 > 1000000: ans += length2(n / 2)
        else: ans += length(n / 2)
    return ans

def length(n):
    if Len[n] > 0: return Len[n]
    if n == 1: return 0
    Len[n] = 1
    if n % 2 == 1:
        if 3 * n + 1 > 1000000: Len[n] += length2(3 * n + 1)
        else: Len[n] += length(3 * n + 1)
    else:
        if n / 2 > 1000000: Len[n] += length2(n / 2)
        else: Len[n] += length(n / 2)
    return Len[n]

def find():
    maxlen = 0
    maxi = 0
    for i in range(1, 1000000):
        tmp = length(i)
        if tmp > maxlen:
            maxlen = tmp
            maxi = i
    return maxi

print find()
