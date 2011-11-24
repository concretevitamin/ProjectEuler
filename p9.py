# 31875000
def find():
    for a in range(1, 1001):
        for b in range(a, 1001):
            for c in range(b, 1001):
                if a + b + c == 1000 and a * a + b * b == c * c:
                    return a * b * c

print find()
