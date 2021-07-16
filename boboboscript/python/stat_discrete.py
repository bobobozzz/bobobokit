#!/usr/bin/env python3

# BoBoBo

import math
from .stat_center import mean
from .stat_center import quantile
from .vector import sum_of_squares


def data_range(x):
    return max(x) - min(x)


def de_mean(x):
    m = mean(x)
    return [x_i - m for x_i in x]


def variance(x):
    n = len(x)
    deviation = de_mean(x)
    return sum_of_squares(deviation) / (n - 1)


def standard_deviation(x):
    return math.sqrt(variance(x))


def interquantile_range(x):
    return quantile(x, 0.75) - quantile(x, 0.25)
