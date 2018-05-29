@echo off
SET env="%ASPNETCORE_ENVIRONMENT%"
ECHO 현재 ASP.NET Core 환경 : %env%

if %env%=="Development" GOTO DEVENV

ECHO 개발 환경이 아닙니다.
SET /p wannaChange=개발 환경으로 바꾸시겠습니까 [y/n]?
IF %wannaChange%==y GOTO WANNACHANGE
GOTO COMPLETE


:WANNACHANGE
ECHO 개발 환경으로 바꿔볼게요.
SETX ASPNETCORE_ENVIRONMENT Development
SET /p beforeExit=엔터를 눌러 종료하세요.
EXIT


:DEVENV
echo 개발 환경입니다.
echo 배포 환경("Production")으로 바꾸시겠습니까?
SET /p beforeExit=엔터를 눌러 종료하세요...
EXIT

:COMPLETE

