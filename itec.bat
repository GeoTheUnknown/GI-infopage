@echo off
title=Group2 ITEC 55
:Menu
cls
echo [1] Create File
echo [2] Copy File
echo [3] Move File
echo [4] Rename File
echo [5] Delete File
echo [6] Create Folder
echo [7] Copy Folder
echo [8] Move Folder
echo [9] Rename Folder
echo [10] Delete Folder
echo [11] Exit

set /p choice=Enter your choice: 
echo.
if "%choice%"=="1" goto createFile
if "%choice%"=="2" goto copyFile
if "%choice%"=="3" goto moveFile
if "%choice%"=="4" goto renameFile
if "%choice%"=="5" goto deleteFile
if "%choice%"=="6" goto createFolder
if "%choice%"=="7" goto copyFolder
if "%choice%"=="8" goto moveFolder
if "%choice%"=="9" goto renameFolder
if "%choice%"=="10" goto deleteFolder
if "%choice%"=="11" exit
:endMenu

echo Invalid choice. Please try again.
echo.
pause
goto menu

:createFile
set /p fileName=Enter file name: 
set /p fileType=Enter file type: 
echo.>"%fileName%".%fileType%
echo. 
echo %fileName% successfully created.
echo. 
pause
goto Menu

:copyFile
set /p fileName=Enter filename: 
set /p fileDestination=Enter file destination: 
echo.
copy "%fileName%" "%fileDestination%"
echo %fileName% successfully copied.
echo.
pause
goto menu

:moveFile
set /p fileName=Enter file name: 
set /p fileDestination=Enter destination: 
move "%fileName%" "%fileDestination%"
echo. 
echo %fileName% successfully moved to %fileDestination%.
echo. 
pause
goto menu

:renameFile
set /p fileName=Enter file name: 
set /p newFileName=Enter new file name: 
ren "%fileName%" "%newFileName%"
echo. 
echo %fileName% successfully renamed to %newFileName%.
echo. 
pause
goto menu

:deleteFile
set /p fileName=Enter file name: 
del "%fileName%"
echo. 
echo %fileName% successfully deleted.
echo. 
pause
goto menu

:createFolder
set /p folderName=Enter folder name: 
set /p folderDestination=Enter folder destination: 
echo.
cd "%folderDestination%"
md "%folderName%"
echo %folderName% successfully created.
echo. 
pause
goto Menu

:copyFolder
set /p folderName=Enter folder name: 
set /p folderDestination=Enter folder destination: 
echo.
xcopy "%folderName%" "%folderName%"copy /e /s /i
move "%folderName%"copy "%folderDestination%"
cd "%folderDestination%" 
ren "%folderName%"copy "%folderName%" 
echo %folderName% successfully copied.
echo.
pause
goto Menu

:moveFolder
set /p folderName=Enter folder name: 
set /p folderDestination=Enter folder destination: 
echo.
move "%folderName%" "%folderDestination%"
echo %folderName% successfully moved.
echo.
pause
goto Menu

:renameFolder
set /p folderName=Enter folder name: 
set /p folderNewName=Enter folder new name: 
echo.
ren "%folderName%" "%folderNewName%"
echo %folderName% successfully rename to %folderNewName%.
echo.
pause
goto Menu

:deleteFolder
set /p folderName=Enter folder name: 
echo.
rd "%folderName%" /s /q
echo %folderName% successfully deleted. 
echo.
pause
goto Menu