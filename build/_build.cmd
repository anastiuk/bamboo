@REM *********************************************************************
@REM * (C) Copyright 2017 by Mobility Quotient Solutions, Inc.
@REM *
@REM * $Revision: $
@REM *     $Date: $
@REM *
@REM *********************************************************************

@ECHO OFF
color 1f
SETLOCAL
cls

@REM -----------------------------------------------------------------------------
@REM  Set the Environment Variables
@REM
@REM  Note: Variables defined below are required and can exist either locally in 
@REM        within this file or in the system environment. Default configuration
@REM        is setup to expect the latter.
@REM -----------------------------------------------------------------------------
@REM ANT_HOME=D:\Downloads\Applications\Apache\apache-ant-1.8.1

@REM -----------------------------------------------------------------------------
@REM  Set Script Variables
@REM -----------------------------------------------------------------------------
@set SCRIPT_TITLE="Build Application: Winsight Web Service"
@set SCRIPT_ARGUMENTS=%SCRIPT_ARGUMENTS% -buildfile build.xml target.cleanbuild
@set SCRIPT_ARGUMENTS=%SCRIPT_ARGUMENTS% -DmfImplVersion=@BUILDNUMBER@

@REM -----------------------------------------------------------------------------
@REM  Now execute the script
@REM -----------------------------------------------------------------------------
start %SCRIPT_TITLE% %ANT_HOME%\bin\ant %SCRIPT_ARGUMENTS%

ENDLOCAL