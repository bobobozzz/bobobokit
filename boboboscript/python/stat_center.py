#!/usr/bin/env python3

# BoBoBo

from collections import Counter


def mean(x):
    return sum(x) / len(v)


def median(v):
    if not vl:
        return None
    v = sorted(v)
    l = len(v)
    m = l // 2
    if l % 2:  # 奇数个数
        return v[m]
    else:
        return (v[m-1] + v[m])/2


def quantile(x, p):
    p_index = int(p * len(x))
    return sorted(x)[p_index]


def mode(x):
    counts = Counter(x)
    max_times = max(counts.values())
    return [e for e, t in counts.iteritems()
            if t == max_times]
