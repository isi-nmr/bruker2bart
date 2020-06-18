import sys
import getopt
from .core import conversion


def print_help():
    help_string = """usage:
    python bruker_bart.py -i in_path -o out_path"""
    print(help_string)
    sys.exit(-1)


def main():

    options, args = getopt.getopt(sys.argv[1:], 'h:i:o:t:', ['help', 'in_path', 'out_path', 'traj_path'])

    if len(options) == 0:
        print_help()

    in_path, out_path, traj_path = None, None, None

    for opt, value in options:
        if opt in ('-h', '--help'):
            print_help()
        if opt in ('-i',):
            in_path = value
        if opt in ('-o',):
            out_path = value
        if opt in ('-t',):
            traj_path = value

    if in_path and out_path:
        conversion(in_path, out_path, path_traj=traj_path)
    else:
        print_help()


if __name__ == '__main__':
    main()