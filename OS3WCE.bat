@echo off
REM Paths
set "S3_PATH=C:\Users\Brand\Desktop\RPCS3_BLUS_Build\RPCS3\games\shortcuts\Skate 3.lnk"
set "CE_PATH=C:\Users\Brand\Downloads\matts_Skate_3_All_in_One_Cheat_Table_V6.0.CT"
set "CHEAT_ENGINE_PATH=C:\Path\To\CheatEngine.exe"

REM Debugging
echo S3_PATH is %S3_PATH%
echo CE_PATH is %CE_PATH%
pause

REM Check S3_PATH
if exist "%S3_PATH%" (
    echo S3_PATH exists: %S3_PATH%
    start "" "%S3_PATH%"
    echo Opened S3_PATH
) else (
    echo S3_PATH does not exist: %S3_PATH%
)
pause

REM Check CE_PATH
if exist "%CE_PATH%" (
    echo CE_PATH exists: %CE_PATH%
    echo Attempting to open CE_PATH
    start "" "%CE_PATH%"
    if errorlevel 1 (
        echo Failed to open %CE_PATH% directly, trying with Cheat Engine executable.
        start "" "%CHEAT_ENGINE_PATH%" "%CE_PATH%"
    ) else (
        echo Opened CE_PATH
    )
) else (
    echo CE_PATH does not exist: %CE_PATH%
)
pause

REM Final pause to keep the window open
pause

REM Made by spark
