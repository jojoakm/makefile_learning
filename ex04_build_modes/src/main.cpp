#include <iostream>
#include <stdexcept>
#include <string>

#include "../include/formatter.h"

int main(int argc, char** argv) {
    if (argc < 3) {
        std::cerr << "Usage: ./formatter_app <word> <times>\n";
        return 1;
    }

    const std::string word = argv[1];
    int times = 0;
    try {
        times = std::stoi(argv[2]);
    } catch (...) {
        std::cerr << "times must be integer\n";
        return 2;
    }

    if (times < 0) {
        std::cerr << "times must be >= 0\n";
        return 3;
    }

    std::cout << repeat_with_space(word, times) << "\n";
    return 0;
}

