"""
Prints ${CMAKE_ARGS} with scikit-build incompatible arguments stripped from it.
"""

import os

args = []

if "CMAKE_ARGS" in os.environ:
    args = list(filter(None, os.environ["CMAKE_ARGS"].split(" ")))

args = [arg for arg in args if len(arg.split("DCMAKE_INSTALL_PREFIX")) == 1]

print(" ".join(args))
