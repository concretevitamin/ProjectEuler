import math

def generate_prime():
    h = [1] * (sqr+1)
    i = 2
    while i < sqr:
        while (not h[i]) and (i + 1 < sqr):
            i += 1
        else:
            if i == sqr - 1:
                break
        prime.append(i)
        j = i + i
        while j < sqr:
            h[j] = 0
            j += i
        i += 1

sqr = math.ceil(math.sqrt(600851475143))
prime = []
generate_prime()
max = 0
for p in prime:
    if 600851475143 % p == 0:
        max = p
print(max)

