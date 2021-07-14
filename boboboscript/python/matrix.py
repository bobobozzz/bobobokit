#!/usr/bin/env python3

# BoBoBo


def shape(A):
    return len(A), len(A[0]) if A else 0


def get_row(A, i):
    return A[i]


def get_column(A, j):
    return [A_i[j] for A_i in A]


def make_matrix(num_rows, num_cols, entry_fn):
    return [[entry_fn(i, j) for j in num_cols] for i in num_rows]


def is_diagonal(i, j):
    return 1 if i == j else 0
