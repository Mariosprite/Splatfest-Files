@echo off
echo What rejon do you have?
echo USA
echo JPN
echo EUR

echo Enter your region.
set /p USA,JPN,EUR=

if %USA,JPN,EUR% == USA goto USA
if %USA,JPN,EUR% == JPN goto JPN
if %USA,JPN,EUR% == EUR goto EUR
) else goto RegionSelect


:RegionSelect
@echo off
echo What rejon do you have?
echo USA
echo JPN
echo EUR

echo Enter your region.
set /p USA,JPN,EUR=

if %USA,JPN,EUR% == USA goto USA
if %USA,JPN,EUR% == JPN goto JPN
if %USA,JPN,EUR% == EUR goto EUR

:USA
echo Donwloading USA Files...
echo Done!
powershell -Command "Invoke-WebRequest 'https://github.com/Mariosprite/Splatfest-Files/raw/main/USA.rar' -Outfile USA.rar"
pause
exit


:JPN
echo Donwloading JPN Files...
powershell -Command "Invoke-WebRequest 'https://github.com/Mariosprite/Splatfest-Files/raw/main/JPN.rar' -Outfile JPN.rar"
echo Done!
pause
exit

:EUR
echo Donwloading EUR Files...
powershell -Command "Invoke-WebRequest 'https://github.com/Mariosprite/Splatfest-Files/raw/main/EUR.rar' -Outfile EUR.rar"
echo Done!
pause
exit