# ${PYTHON} setup.py install --build-type Release ${CMAKE_ARGS}
# with scikit-build incompatible arguments stripped from it
python scikit_cmake_args.py
echo $PYTHON setup.py install --build-type Release `python scikit_cmake_args.py`
$PYTHON setup.py install --build-type Release `python scikit_cmake_args.py`
