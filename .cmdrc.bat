@echo off

REM This is the file that runs automatically after cmd.exe has been launched.
REM To stop this file from running DELETE the registry entry - HKEY_CURRENT_USER\Software\Microsoft\Command Processor\AutoRun

DOSKEY LS=DIR $*
DOSKEY RM=DEL $*
DOSKEY CD=CD /D $*
DOSKEY KILL=TASKKILL /IM $*
DOSKEY POWEROFF=SHUTDOWN -S -T 00
DOSKEY EDIT=notepad $*
DOSKEY MEDIAMODE=set PATH=%PATH%;"C:\Program Files\MKVToolNix";"C:\Program Files\MediaInfo"

CD /D %HOME%
PROMPT $P$_$$ 

@echo on
