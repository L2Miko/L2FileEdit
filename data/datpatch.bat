@echo off
for %%f in (*.dat) do (
copy %%f "temp\%%f"
l2encdec\l2encdec -g -t %%f
l2encdec\l2encdec -h 413 dec-%%f %%f
del /Q dec-%%f
)
pause