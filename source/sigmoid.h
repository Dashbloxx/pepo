#pragma once

#include <math.h>

static inline float sigmoid(float number)
{
    return 1.0 / (1.0 + exp(-number));
}