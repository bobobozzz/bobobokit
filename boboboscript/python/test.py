#!/usr/bin/env python3

# BoBoBo

import sys
from boboboscript.common.args import parse_args

if __name__ == "__main__":
    print("This is test.py")
    print("Parameters: " + str(sys.argv))

    args = parse_args(
        sys.argv, "test.py -c <config file> -p <parameters with comma>")

    print("After parse:")
    print(args.ini)
    print(args.params)
