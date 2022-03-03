#include <iostream>
#include <unistd.h>

int main(int, char**) {
    std::cout << "Hello, world!\n";

    while(1)
    {
        std::cout << "Hello docker work!!!\n";
        sleep(1);
    }
}
