@ECHO OFF
SET dir=l2encdec\

FOR /F %%i IN ('dir /b *.dat') DO (
	"%dir%\l2encdec.exe" -s "%%i" "dec-%%i"
	"%dir%\l2encdec.exe" -h 413 "dec-%%i" "%%i"
	del /Q dec-%%i
)
PAUSE