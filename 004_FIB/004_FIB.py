'''
Title: Rabbit and Recurrence Relations
Rosalind ID: FIB
Rosalind #: 004
URL: http://rosalind.info/problems/fib
'''

def rabbit_pairs(n, k):
    pairs = [0] * n
    pairs[0] = 1

    # Calculate the number of rabbit pairs for each subsequent month using the recurrence relation
    for i in range(1, n):
        pairs[i] = pairs[i - 1] + k * (pairs[i - 2] if i >= 2 else 0)

    return pairs[-1]

n, k = map(int, input().split())
result = rabbit_pairs(n, k)
print(result)

