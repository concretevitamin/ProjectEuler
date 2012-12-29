def generate_prime():
    global prime_list
    prime_list = [True] * (bound + 1)
    for i in range(2, bound + 1):
        if prime_list[i]:
            for j in range(i + i, bound + 1, i):
                prime_list[j] = False

def get_prime_factor_dict(num):
    dic = {}
    p_list = [_ for _ in range(2, bound + 1) if prime_list[_]]
    for prime in p_list:
        if num == 1:
            return dic
        while num % prime == 0:
            num /= prime
            if prime not in dic:
                dic[prime] = 1
            else:
                dic[prime] += 1

def get_cnt_divisor(num):
    prime_factor = get_prime_factor_dict(num)
    cnt_divisor = 1
    for _, exponent in prime_factor.items():
        cnt_divisor *= (exponent + 1)
    return cnt_divisor

def solve():
    generate_prime()
    num = 1
    index = 1
    while True:
        index += 1
        num += index
        cnt_divisor = get_cnt_divisor(num)
        if cnt_divisor > 500:
            print num
            break

if __name__ == '__main__':
    global bound
    bound = 50000
    solve()
