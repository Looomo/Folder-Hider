@echo off
echo renaming %1 >> log.txt
set fullpath=%1
set fullpath=%fullpath:~1,-1%
set disk=%fullpath:~0,2%
%disk%
:split
set folder=%fullpath%
for /f "tokens=1,* delims=\" %%i in ("%fullpath%") do (
  echo %%i
  echo %folder%
  set fullpath=%%j
  set loc=%%i
)
if not "%fullpath%"=="" goto split

for /f "tokens=1,* delims=." %%a in ("%folder%") do (
	set truename=%%a
	set c3=%%b
)


ren %folder% %truename%