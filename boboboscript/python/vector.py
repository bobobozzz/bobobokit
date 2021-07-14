#!/usr/bin/env python3

# BoBoBo

from funtools import partial
from funtools import reduce
import math


def vector_add(v, w):
    return [v_i + w_i for v_i, w_i in zip(v, w)]


def vector_subtract(v, w):
    return [v_i - w_i for v_i, w_i in zip(v, w)]


vector_sum = partial(reduce, vector_add)


def scalar_multiply(c, v):
    return [c * i for i in v]


def vector_mean(vectors):
    if not vectors:
        return []
    n = len(vectors)
    return scalar_multiply(1/n, vector_sum(vectors))


def dot(v, w):
    return sum([v_i * w_i for v_i, w_i in zip(v, w)])


def sum_of_squares(v):
    return dot(v, v)


def magnitude(v):
    return math.sqrt(sum_of_squares(v))


def squared_distance(v, w):
    return sum_of_squares(vector_subtract(v, w))


def distance(v, w):
    return math.sqrt(squared_distance(v, w))
