@echo off
SET env=%ASPNETCORE_ENVIRONMENT%
ECHO Current ASP.NET Core Environment : [%env%]
SET /p wannaChange=Do you want to change your environment [y/n]?

if %wannaChange%==y GOTO CHANGE_ENV
REM This user doesn't want to change.
ECHO Environment is still [%env%].
GOTO COMPLETE

:CHANGE_ENV
REM This user wants to change.
ECHO [D]evelopment
ECHO [S]taging
ECHO [P]rodunction
SET /p newEnv=Which do you want to change your environment [d/s/p]?
if %newEnv%==d (
	ECHO You select Development
	SETX ASPNETCORE_ENVIRONMENT Development
	EXIT
)

if %newEnv%==s ( 
	ECHO You select Staging
	SETX ASPNETCORE_ENVIRONMENT Staging
	EXIT
)

if %newEnv%==p ( 
	ECHO You select Production
	SETX ASPNETCORE_ENVIRONMENT Production
	EXIT
) else ( Echo Enter Valid Environment Name. )

:COMPLETE