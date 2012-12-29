# 104743
def gen(len):
    MAX = 10000000
    h = [1] * (MAX + 1)
    i = 2
    cnt = 0
    while 1618:
        while i + 1 < MAX and not h[i]: i += 1
        if i + 1 == MAX: break
        cnt += 1
        if cnt == len: return i
        j = i + i
        while j < MAX:
            h[j] = 0
            j += i
        i += 1

print gen(10001)
