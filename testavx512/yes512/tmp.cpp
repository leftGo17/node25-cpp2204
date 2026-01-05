void func(int *__restrict a, int *__restrict b, int n) {
    a = (int *)__builtin_assume_aligned(a, 64);
    b = (int *)__builtin_assume_aligned(b, 64);
    n = n / 16 * 16;
    for (int i = 0; i < n; i++) a[i] = b[i] * 10 + 20;
}
