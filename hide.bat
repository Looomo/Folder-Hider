@echo off
set fullpath=%1
set first=%fullpath:~0,1%
set fullpath=%fullpath:~1,-1%
echo  %fullpath% >> log.txt
set disk=%fullpath:~0,2%
%disk%
echo changing to %disk%
:split
set folder=%fullpath%
for /f "tokens=1,* delims=\" %%i in ("%fullpath%") do (
  echo %%i
  set fullpath=%%j
)
if not "%fullpath%"=="" goto split

ren %folder% %folder%.{645ff040-5081-101b-9f08-00aa002f954e}