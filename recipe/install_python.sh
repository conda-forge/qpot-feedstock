# ${PYTHON} setup.py install --build-type Release ${CMAKE_ARGS}
# with scikit-build incompatible arguments stripped from it
$PYTHON setup.py install --build-type Release `python scikit-build_cmake_args.py`
