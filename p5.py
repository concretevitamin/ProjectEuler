# 232792560
def gcd(m, n):
    if n > 0: return gcd(n, m % n)
    else: return m

def lcm(a, b): return a * b / gcd(a, b)

LCM = 1
for num in range(2, 21):
    LCM = lcm(LCM, num)

print LCM
