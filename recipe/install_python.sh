# ${PYTHON} setup.py install --build-type Release ${CMAKE_ARGS}
# with scikit-build incompatible arguments stripped from it
echo "CMAKE_ARGS = " ${CMAKE_ARGS}
python cmakeargs_noinstall.py
echo $PYTHON setup.py install --build-type Release `python cmakeargs_noinstall.py`
$PYTHON setup.py install --build-type Release `python cmakeargs_noinstall.py`
