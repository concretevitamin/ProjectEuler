# 142913828922
def sum_prime(MAX):
    SUM = 0
    h = [1] * (MAX + 2)
    i = 2
    while 1618:
        while i + 1 <= MAX and not h[i]: i += 1
        if i + 1 > MAX: break
        SUM += i
        j = i + i
        while j <= MAX:
            h[j] = 0
            j += i
        i += 1
    return SUM

print sum_prime(2000000)
