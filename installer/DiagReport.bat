@echo off
set dir=%CD%
set scriptPath=%dir%\DiagReport.ps1
for /f "tokens=*" %%a in ('powershell Get-ExecutionPolicy') do (
set originPolicy=%%a
)
powershell Set-ExecutionPolicy 0
powershell %scriptPath%
powershell Set-ExecutionPolicy %originPolicy%

pause