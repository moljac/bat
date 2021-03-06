@echo off

set APPS=^
	chocolateygui ^
	nuget.commandline ^
	filezilla ^
	powershell ^
	dotnet3.5 ^
	dotnet4.5 ^
	dotnet4.5.1 ^
	dotnet4.5.2 ^
	jre8 ^
	javaruntime ^
	ccleaner ^
	sysinternals ^
	spybot ^
	superantispyware ^
	malwarebytes ^
	fastcopy ^
	windows-tweaker.install ^
	daemontoolslite ^
	ultraiso ^
	magicdisc ^
	isorecorder ^
	virtualclonedrive ^
	procexp ^
	perfview ^
	mysql.workbench ^
	teamviewer ^
	cygwin ^
	youtube-dl ^
	virtualbox ^
	googledrive ^
	dropbox ^


::===================================================================
::choco install %APPS%
set COMMAND=choco install --yes --force --verbose --debug --allowEmptyChecksums

:: chocolatey update packageName [-source ...] [-prerelease]
::set COMMAND=cup --yes --force --verbose --debug --allowEmptyChecksums

::choco uninstall %APPS%
::set COMMAND=cuninst --yes --force --verbose --debug
::===================================================================
	
%COMMAND% %APPS%

:: for %%a IN (%APPS%) DO (
:: 	echo %%a
::
:: 	:: choco install %%a
:: 	cinst -y -verbose ^
:: 			%%a
:: )

@IF %ERRORLEVEL% NEQ 0 PAUSE
