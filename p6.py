# 25164150
num1 = 0
num2 = 0
for num in range(1, 101):
    num1 += num * num
    num2 += num
num2 *= num2
print num2 - num1
