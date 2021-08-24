:: %PYTHON% setup.py install --build-type Release %CMAKE_ARGS%
:: with scikit-build incompatible arguments stripped from it
python cmakeargs_noinstall.py > mytemp.txt
%PYTHON% setup.py install --build-type Release < mytemp.txt
