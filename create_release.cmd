@echo off
cls

set varroot="release"

echo Deleting old release...
rd /S /Q %varroot%

echo Setting up directory tree...
echo Copying contents...

call src_structure.cmd %varroot%

echo Stripping comments...
start /WAIT /B /D "%varroot%\" decomment -i -r "*.blk*

echo Deleting source files...
pushd %varroot%\
del /S /Q /F *.blk
for /R %%f in (*.decomment) do ren "%%f" *blk
popd

echo Release created
pause