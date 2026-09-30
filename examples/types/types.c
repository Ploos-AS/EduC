#include <limits.h>
#include <stdio.h>

int main(void)
{
    int temperature = 21;
    unsigned int students = 12U;
    double voltage = 3.3;

    printf("temperature = %d C\n", temperature);
    printf("students = %u\n", students);
    printf("voltage = %.1f V\n", voltage);
    printf("int range = %d .. %d\n", INT_MIN, INT_MAX);
    return 0;
}
