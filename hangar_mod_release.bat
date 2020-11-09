@echo off

echo Deleting old release...
rd /S /Q "hangar_mod_release"

echo Setting up directory tree...
echo Copying contents...

xcopy /Y /I "content\pkg_local\gameData\environments\weather_types_hangar_field_mod.blk" "hangar_mod_release\content\pkg_local\gameData\environments\"
xcopy /Y /I "content\pkg_local\gameData\environments\_weather_types.blk" "hangar_mod_release\content\pkg_local\gameData\environments\"
xcopy /Y /I "content\pkg_local\gameData\environments\_weather_types_hangar_field.blk" "hangar_mod_release\content\pkg_local\gameData\environments\"

xcopy /Y /I "content\pkg_local\gameData\scenes\hangar_field_mission_mod_prem.blk" "hangar_mod_release\content\pkg_local\gameData\scenes\"
xcopy /Y /I "content\pkg_local\gameData\scenes\hangar_field_mission_mod_noprem.blk" "hangar_mod_release\content\pkg_local\gameData\scenes\"

xcopy /Y /I /S /E "content\pkg_local\gameData\scenes\timePresets" "hangar_mod_release\content\pkg_local\gameData\scenes\timePresets\"
xcopy /Y /I /S /E "content\pkg_local\gameData\scenes\vehiclePresets" "hangar_mod_release\content\pkg_local\gameData\scenes\vehiclePresets\"


xcopy /Y /I "content\pkg_local\levels\hangar_field_mod.blk" "hangar_mod_release\content\pkg_local\levels\"
xcopy /Y /I "content\pkg_local\levels\hangar_field_mod.bin" "hangar_mod_release\content\pkg_local\levels\"
xcopy /Y /I "hangar_field_mod.blk" "hangar_mod_release\"

echo Stripping comments...
start /WAIT /B /D "hangar_mod_release\" decomment -i -r "*.blk*

echo Deleting source files...
pushd hangar_mod_release\
del /S /Q /F *.blk
for /R %%f in (*.decomment) do ren "%%f" *blk
popd

echo Release created
pause