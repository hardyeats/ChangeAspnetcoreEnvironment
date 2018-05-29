@echo off
SET env=%ASPNETCORE_ENVIRONMENT%
ECHO Current ASP.NET Core Environment : [%env%]
SET /p wannaChange=Do you want to change you environment [y/n]?

if %wannaChange%==y GOTO CHANGE_ENV
REM This user doesn't want to change.
ECHO Environment is still [%env%].
GOTO COMPLETE

:CHANGE_ENV
REM This user wants to change.
if %env%==Development ( SETX ASPNETCORE_ENVIRONMENT Production ) else ( SETX ASPNETCORE_ENVIRONMENT Development )
Echo The environment variable has changed.
SET /p beforeExit=Press <Enter> to refresh environment variables...
EXIT

:COMPLETE