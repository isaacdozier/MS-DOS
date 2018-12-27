@ECHO OFF

SET /P job=Job#  
SET /P truss=Truss# 

SET h="H:\"
SET pdf="C:\Program Files (x86)\Adobe\Acrobat 2017\Acrobat\Acrobat.exe"
SET path="F:\\MGMT Jobs\2018\%job%\%job% - Structure Attachments\Seals"

pushd %path%

SET fname=""
for /f "delims=" %%a in ('dir /b R*.pdf') do set "fname=%%a"

IF "%job%"=="" GOTO Error-job
	ECHO Searching for job# %job% ...
	%pdf% /A "search=%truss%" /p %fname% 
	break
	pushd %h%
GOTO End

:Error-job
	ECHO Enter a Job Number.
:End

