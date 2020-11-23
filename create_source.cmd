@echo off
cls

set varroot="src"

echo Deleting old source...
rd /S /Q %varroot%

echo Setting up directory tree...
echo Copying contents...

call src_structure.cmd %varroot%

echo Source created
pause