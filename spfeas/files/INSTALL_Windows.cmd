REM pip needs to be installed
where /q pip

IF NOT ERRORLEVEL 1 (

    pip install beautifulsoup4 Bottleneck colorama cython joblib matplotlib numexpr numpy opencv-python pandas PySAL retrying scikit-image scikit-learn scipy six tables xmltodict 
   
    REM Uninstall MpGlue if it already exists 
    where /q classify
    IF NOT ERRORLEVEL 1 (
        pip uninstall mpglue
      )

    pip install git+https://github.com/jgrss/mpglue.git

    REM Uninstall SpFeas if it already exists
    where /q spfeas
    IF NOT ERRORLEVEL 1 (
        pip uninstall spfeas
      ) 

    pip install git+https://github.com/jgrss/spfeas.git     

    REM Check if SpFeas installed correctly
    where /q spfeas
    IF NOT ERRORLEVEL 1 (
        ECHO.The installation has finished!
      ) ELSE (
        ECHO.SpFeas failed to install.
      )

  ) ELSE (
    ECHO.Download get-pip.py from https://pip.pypa.io/en/latest/installing/
  )
