#include <stdio.h>

static int square(int value)
{
    return value * value;
}

int main(void)
{
    const int input = 7;
    const int result = square(input);

    printf("%d squared = %d\n", input, result);
    return result == 49 ? 0 : 1;
}
