@echo off
setlocal EnableDelayedExpansion

REM Get the directory where the batch file is located
set "scriptPath=%~dp0"

REM Change directory to where the batch file is located
cd /d "%scriptPath%"

REM Count the number of directories in the results folder
set count=0
for /d %%i in (results\*) do set /a count+=1

REM Increment the count for the new test run directory
set /a count+=1

REM Run Robot Framework tests and specify output directory
robot --outputdir results\test%count% tests\
