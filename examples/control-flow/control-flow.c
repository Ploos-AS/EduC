#include <stdio.h>

int main(void)
{
    int sum = 0;

    for (int value = 1; value <= 10; ++value) {
        if (value % 2 == 0) {
            sum += value;
        }
    }

    printf("sum of even numbers 1..10 = %d\n", sum);
    return sum == 30 ? 0 : 1;
}
