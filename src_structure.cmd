set varroot=%1

xcopy /Y /I "content\pkg_local\gameData\environments\weather_types_hangar_field_mod.blk" "%varroot%\content\pkg_local\gameData\environments\"
xcopy /Y /I "content\pkg_local\gameData\environments\_weather_types.blk" "%varroot%\content\pkg_local\gameData\environments\"
xcopy /Y /I "content\pkg_local\gameData\environments\_weather_types_hangar_field.blk" "%varroot%\content\pkg_local\gameData\environments\"

xcopy /Y /I "content\pkg_local\gameData\scenes\hangar_field_mission_mod.blk" "%varroot%\content\pkg_local\gameData\scenes\"

xcopy /Y /I /S /E "content\pkg_local\gameData\scenes\timePresets" "%varroot%\content\pkg_local\gameData\scenes\timePresets\"
xcopy /Y /I /S /E "content\pkg_local\gameData\scenes\vehiclePresets" "%varroot%\content\pkg_local\gameData\scenes\vehiclePresets\"
xcopy /Y /I /S /E "content\pkg_local\config" "%varroot%\content\pkg_local\config"


xcopy /Y /I /S /E "_scilauncher2_settings" "%varroot%\_scilauncher2_settings\"

xcopy /Y /I "content\pkg_local\levels\hangar_field_mod.blk" "%varroot%\content\pkg_local\levels\"
xcopy /Y /I "content\pkg_local\levels\hangar_field_mod.bin" "%varroot%\content\pkg_local\levels\"
xcopy /Y /I "hangar_field_mod.blk" "%varroot%\"