@echo off
SET env="%ASPNETCORE_ENVIRONMENT%"
ECHO ���� ASP.NET Core ȯ�� : %env%

if %env%=="Development" GOTO DEVENV

ECHO ���� ȯ���� �ƴմϴ�.
SET /p wannaChange=���� ȯ������ �ٲٽðڽ��ϱ� [y/n]?
IF %wannaChange%==y GOTO WANNACHANGE
GOTO COMPLETE


:WANNACHANGE
ECHO ���� ȯ������ �ٲ㺼�Կ�.
SETX ASPNETCORE_ENVIRONMENT Development
SET /p beforeExit=���͸� ���� �����ϼ���.
EXIT


:DEVENV
echo ���� ȯ���Դϴ�.
echo ���� ȯ��("Production")���� �ٲٽðڽ��ϱ�?
SET /p beforeExit=���͸� ���� �����ϼ���...
EXIT

:COMPLETE

