#include "../include/stats.h"

#include <algorithm>
#include <numeric>

double mean(const std::vector<double>& values) {
    if (values.empty()) {
        return 0.0;
    }
    const double sum = std::accumulate(values.begin(), values.end(), 0.0);
    return sum / values.size();
}

double max_value(const std::vector<double>& values) {
    if (values.empty()) {
        return 0.0;
    }
    return *std::max_element(values.begin(), values.end());
}

