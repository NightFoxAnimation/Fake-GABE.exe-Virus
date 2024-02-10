@echo off
timeout /nobreak /t 2 >nul
color a
title GABE.exe Installer
set "file=start.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Scaning
for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
for /f %%a in ('"prompt $H&for %%b in (0) do rem"') do set "BS=%%a"
>nul chcp 65001
set "_spc=          "
set "_bar=■■■■■■■■■■"

setlocal enabledelayedexpansion

for /f %%a in ('copy /Z "%~dpf0" nul')do for /f skip^=4 %%b in ('echo;prompt;$H^|cmd')do set "BS=%%~b" & set "CR=%%a"
for /l %%L in (1 1 10)do <con: set /p "'= !CR!!BS!!CR![!_bar:~0,%%~L!!BS!!_spc:~%%~L!] " <nul & >nul timeout.exe /t 1
set "file=dec.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
ping -n 10 8.8.4.4
set "file=click.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Secure connection available
timeout /nobreak /t 2 >nul
clear
color 4
set "file=click.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Thank You for Using GABE.exe
set "file=win.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
timeout /nobreak /t 2 >nul
set "file=8-bit.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Global
timeout /nobreak /t 1 >nul
set "file=8-bit.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Algorithmic
timeout /nobreak /t 1 >nul
set "file=8-bit.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Binary
timeout /nobreak /t 1 >nul
set "file=8-bit.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Entity
timeout /nobreak /t 3 >nul
clear
set "file=click.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Finding User Credentials... please wait…
timeout /nobreak /t 3 >nul
set "file=click.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Successfully connected to system
start /b "" cscript user.vbs
timeout /nobreak /t 1 >nul
set "file=click.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Deactivating AntiVirus
timeout /nobreak /t 3 >nul
start /b "" cscript vir.vbs
set "file=click.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo Now Initializing GABE.exe
timeout /nobreak /t 1 >nul
echo This will take some time
timeout /nobreak /t 4 >nul
set "file=cpu-working.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs

setlocal EnableDelayedExpansion

set "elems[0]=Verifying"
set "elems[1]=Initializing"
set "elems[2]=Downloading"
set "elems[3]=Unzipping"

set "files[0]=pythosaurus"
set "files[1]=cyberforge"
set "files[2]=codezenith"
set "files[3]=bytebloom"
set "files[4]=datanetic"
set "files[5]=pythonexus"
set "files[6]=byteshark"
set "files[7]=pyramidium"
set "files[8]=datalystic"
set "files[9]=byteblaze"
set "files[10]=pyluminous"
set "files[11]=codequanta"
set "files[12]=datasync"
set "files[13]=pyverge"
set "files[14]=byteflow"
set "files[15]=cyberpeak"
set "files[16]=pyluminar"
set "files[17]=bytecraft"
set "files[18]=pythonetic"
set "files[19]=bytevoyage"
set "files[20]=datavault"
set "files[21]=pythonova"
set "files[22]=dataplus"
set "files[23]=byteforge"
set "files[24]=cyberlink"
set "files[25]=codecrafter"
set "files[26]=pythonscape"
set "files[27]=bytevista"
set "files[28]=cyberquest"
set "files[29]=datanet"
set "files[30]=pygalactic"
set "files[31]=bytecode"
set "files[32]=datasync"
set "files[33]=pylonic"
set "files[34]=bytepath"
set "files[35]=codenetic"
set "files[36]=datanova"
set "files[37]=pyforge"
set "files[38]=byteblitz"
set "files[39]=datamatrix"
set "files[40]=pyvault"
set "files[41]=byteblaze"
set "files[42]=cyberpulse"
set "files[43]=codeblaze"
set "files[44]=pyforge"
set "files[45]=bytestorm"
set "files[46]=cyberquest"
set "files[47]=codenova"
set "files[48]=pyluminar"
set "files[49]=byteverse"
set "files[50]=datalystic"
set "files[51]=cyberscape"
set "files[52]=pythonova"
set "files[53]=dataview"
set "files[54]=bytecrafter"
set "files[55]=pythonexus"
set "files[56]=byteblitz"
set "files[57]=cyberquest"
set "files[58]=codenova"
set "files[59]=dataloop"
set "files[60]=pycraft"
set "files[61]=byteforge"
set "files[62]=codezenith"
set "files[63]=pythosaurus"
set "files[64]=bytepulse"
set "files[65]=cyberpeak"
set "files[66]=codepulse"
set "files[67]=byte_vista"
set "files[68]=cyber_quest"
set "files[69]=code_blaze"
set "files[70]=py_luminous"
set "files[71]=byte_flow"
set "files[72]=data_sync"
set "files[73]=pythonic"
set "files[74]=byte_voyage"
set "files[75]=cyber_forge"
set "files[76]=code_quanta"
set "files[77]=py_luminar"
set "files[78]=byte_blitz"
set "files[79]=data_vault"
set "files[80]=python_scape"
set "files[81]=cyber_link"
set "files[82]=codecrafter"
set "files[83]=py_lonic"
set "files[84]=byte_path"
set "files[85]=code_net"
set "files[86]=data_nova"
set "files[87]=py_galactic"
set "files[88]=byte_pulse"
set "files[89]=pythonify"
set "files[90]=data_matrix"
set "files[91]=py_vault"
set "files[92]=byte_blaze"
set "files[93]=cyber_pulse"
set "files[94]=code_blaze"
set "files[95]=py_forge"
set "files[96]=byte_storm"
set "files[97]=cyber_quest"
set "files[98]=code_nova"
set "files[99]=py_luminar"
set "files[100]=byte_verse"
set "files[101]=datalystic"
set "files[102]=cyber_scape"
set "files[103]=python_ova"
set "files[104]=data_view"
set "files[105]=byte_crafter"
set "files[106]=pythonexus"
set "files[107]=byte_blitz"
set "files[108]=cyber_quest"
set "files[109]=code_nova"
set "files[110]=data_loop"
set "files[111]=py_craft"
set "files[112]=byte_forge"
set "files[113]=code_zenith"
set "files[114]=py_thosaurus"
set "files[115]=byte_pulse"
set "files[116]=cyber_peak"
set "files[117]=code_pulse"
set "files[118]=datalystic"
set "files[119]=pythonify"
set "files[120]=byte_blaze"
set "files[121]=byte_craft"
set "files[122]=data_net"
set "files[123]=py_forge"
set "files[124]=byte_vista"
set "files[125]=cyber_quest"
set "files[126]=code_blaze"
set "files[127]=py_luminous"
set "files[128]=document_archive"
set "files[129]=data_repository"
set "files[130]=file_directory"
set "files[131]=system_log"
set "files[132]=report_generator"
set "files[133]=transaction_history"
set "files[134]=user_profile"
set "files[135]=backup_file"
set "files[136]=index_manager"
set "files[137]=record_keeper"



REM Get start time
set "start_time=%TIME%"

:generateRandomName
    REM Get current time
    set "current_time=%TIME%"
    
    REM Calculate time difference
    set /a "time_diff=(1%current_time:~0,2%-1%start_time:~0,2%)*3600 + (1%current_time:~3,2%-1%start_time:~3,2%)*60 + (1%current_time:~6,2%-1%start_time:~6,2%)"
    
    REM Exit loop if time difference exceeds 20 seconds
    if !time_diff! gtr 25 goto end
    
    set /a "_rand_elem=(%RANDOM% %% 4)"
    set "random_elem=!elems[%_rand_elem%]!"

    set /a "_rand_file=(%RANDOM% %% 138)"
    set "random_file=!files[%_rand_file%]!"
    
    set /a "_rand_numbers_count=(%RANDOM% %% 7) + 3"
    set "random_numbers="
    for /l %%i in (1,1,!_rand_numbers_count!) do (
        set /a "_rand_number=(%RANDOM% %% 1000000) + 1"
        set "random_numbers=!random_numbers!!_rand_number!"
    )
    
    set "randomString=[!random_elem!] - [!random_file!] - [!random_numbers!]"
    
    echo !randomString!........to GABE.exe
goto generateRandomName

:end
clear
color f
echo Initialization complete
set "file=dec.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
timeout /nobreak /t 2 >nul
timeout /nobreak /t 5 >nul
start /b "" cscript exit.vbs
py window_close.pyw
exit
