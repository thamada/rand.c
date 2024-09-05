#include <stdio.h>
#include <stdlib.h>

int main() {
    // Set a fixed seed value (e.g., 1234)
    srand(1234);

    // Generate random numbers
    int random_number1 = rand();
    int random_number2 = rand();
    int random_number3 = rand();

    // Print the generated random numbers
    printf("Random numbers: %d, %d, %d\n", random_number1, random_number2, random_number3);

    return 0;
}
