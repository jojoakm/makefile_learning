#include "../include/formatter.h"

#include <sstream>

std::string repeat_with_space(const std::string& text, int times) {
    if (times <= 0) {
        return {};
    }

    std::ostringstream oss;
    for (int i = 0; i < times; ++i) {
        if (i > 0) {
            oss << " ";
        }
        oss << text;
    }
    return oss.str();
}

