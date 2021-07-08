#!/usr/bin/env python3

# BoBoBo

import csv
import pymysql
import sys
from boboboscript.common.args import parse_args
from boboboscript.common.ini import get_conf


def transform(args):
    conf = get_conf(args.ini, "mysql")

    conn = pymysql.connect(host=conf('host'), port=conf('port'), db=conf(
        'db'), user=conf('user'), password=conf('password'))

    output_file = args.params[0]
    filewriter = csv.writer(open(output_file, 'w', newline=''), delimiter=',')
    header = conf('header').split(',')
    filewriter.writerow(header)

    with conn.cursor() as cursor:
        cursor.execute(conf('query_sql'))
        rows = cursor.fetchall()
        for row in rows:
            filewriter.writerow(row)


if __name__ == "__main__":
    args = parse_args(
        sys.argv, "transform_mysql_csv.py -c <config file> -p <output file>")
    transform(args)
