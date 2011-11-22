#include <stdio.h>
#include <string.h>

int p[780000], ans;

void generate_prime(unsigned long long maxnum) {
    memset(p, 1, sizeof(p));
    unsigned long long i = 2LLU, j = 0LLU;
    while (i < maxnum) {
        while (!p[i] && i < maxnum) ++i;
        j = i + i;
        while (j < maxnum) {
            p[j] = 0;
            j += i;
        }
    }
}

void test() {
    unsigned long long x = 600851475143LLU;
    for (int i = 779999; i > 0; --i)
        if (x % i == 0) {
            printf("%d\n", i);
            break;
        }
}

int main() {
    generate_prime(600851475143LLU);
    test();
    return 0;
}

