:: %PYTHON% setup.py install --build-type Release %CMAKE_ARGS%
:: with scikit-build incompatible arguments stripped from it
for /f "usebackq tokens=*" %%a in (`python cmakeargs_noinstall.py`) do %PYTHON% setup.py install --build-type Release %%a
