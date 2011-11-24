# 906609
def check(st):
    if len(st) == 5:
        return st.endswith(st[1] + st[0])
    else:
        return st.endswith(st[2] + st[1] + st[0])

max = 0
for num1 in range(100, 1000):
    for num2 in range(num1, 1000):
        num3 = num1 * num2
        if check(str(num3)) and num3 > max:
            max = num3

print max
