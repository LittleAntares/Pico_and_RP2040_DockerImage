#include <iostream>
#include "pico/stdlib.h"

int main(int argc, char** argv) {
    // Initialize standard input/output
    stdio_init_all();

    sleep_ms(1000);

    printf("Runing Test Progarm\n");
    while(true){
        printf("Hello World!\n");
        sleep_ms(1000);
    }
    return 0; 
}
