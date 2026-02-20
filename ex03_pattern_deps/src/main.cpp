#include <iostream>
#include <vector>

#include "../include/stats.h"

int main() {
    std::vector<double> values = {3.0, 1.0, 4.0, 1.5, 9.0, 2.6};
    std::cout << "mean = " << mean(values) << "\n";
    std::cout << "max  = " << max_value(values) << "\n";
    return 0;
}

