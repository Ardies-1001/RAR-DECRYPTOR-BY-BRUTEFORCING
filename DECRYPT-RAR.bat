REM ===================James==Ryvers=======Ardies======Lebon============
REM cipher du vortex
@echo off
color B
title DECRYPTER BY THE CIPHER OF VORTEX
mode con: cols=45 lines=30
copy "C:\Program Files (x86)\WinRAR\UnRAR.exe" 
SET PASS=0
SET TMP=TempFold
MD %TMP%
:RAR
cls
echo ---------------------------------------------
echo.
echo                    ,        ,
echo                   /(        )`
echo                   \ \___   / '
echo                   /- _  `-/  '
echo                  (/\/ \ \   /\
echo                  / /   ' `    \
echo                  O O   ) /    '
echo                  `-^--'`v     '
echo                 (_.)  _  )   /
echo                  `.___/`    /
echo                    `-----' /
echo        ----.     __ / __   \
echo        ----'----O)))--) \) /---
echo        ----'    `--' `.__,' \
echo                    '        '
echo                     \       /
echo               ______( (_  / \______
echo             ,'  ,-----'   '        \
echo             `--{__________)        \/
echo.
echo.
echo ---------------------------------------------
echo               CYPHER DU VORTEX
echo.
echo ---------------------------------------------
echo.
pause>nul
cls
echo ---------------------------------------------
echo               VTX1001_DECRYPTER
echo.
echo ---------------------------------------------
echo.
echo CE SYSTEM EST MIS EN PLACE, POUR PERMETTRE LE
echo DECHIFFREMENT DES MOTS DE PASSE, PROTEGEANT 
echo.
echo LES FICHIERS .rar .IL SE BASE SUR UNRAR QUI 
echo.
echo EST CONTENUE DANS LE PACK DE WINRAR.
echo.
echo.
echo APPUYER SUR ENTRER, POUR ACCEDER AU PANEL .
pause>nul
cls
echo ---------------------------------------------
echo               VTX1001_DECRYPTER
echo.
echo ---------------------------------------------
echo.
echo ---------------------------------------------
echo            SUIVEZ MES INSTRUCTIONS
echo.
echo ---------------------------------------------
echo                     NAME
echo.
echo          EXEMPLE : FICHIER_CRYPTER.rar
echo.
echo.
SET/P "NAME=ENTRER LE NOM DU FICHIER A CRAQUER : "
IF "%NAME%"=="" goto ERREURUN
goto GPATH
:ERREURUN
echo ---------------------------------------------
echo             FILE NAME ERROR
echo.
echo ---------------------------------------------
echo    RIEN N'A ETE ENTRER COMME NOM DE FICHIER
echo.
echo.
echo             APPUYER SUR ENTRER
pause>nul
goto RAR
:GPATH
echo.
echo.
echo                     LINK
echo.
echo          EXEMPLE : C:\USERS\PC
echo.
SET/P "PATH=ENTRER LE LIEN COMPLET DU FICHIER  : "
IF "%PATH%"=="" goto ERREURDEUX
goto NEXT
:ERREURDEUX
echo ---------------------------------------------
echo             FILE LINK ERROR
echo.
echo ---------------------------------------------
echo RIEN N'A ETE ENTRER COMME LIEN VERS UN FICHIER
echo.
echo.
echo             APPUYER SUR ENTRER
pause>nul
goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO SP
goto PATH
:PATH
cls
echo ---------------------------------------------
echo             FILE DOES NOT EXIST
echo.
echo ---------------------------------------------
echo    IL SEMBLE QUE LE FICHIER N'EXISTE PAS.
echo.
echo      OU QUELQUE CHOSE S'EST MAL PASSE
echo.
echo.
pause
goto RAR
:SP
echo.
echo CREATION D'UN DICTIONNAIRE DE PASSWORD ...
echo. 
:START
title PASSWORD DECRYPTED
SET /A PASS=%PASS%+1
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%
REM UnRAR.exe E -INUL -P%PASS% "%PATH%\%NAME%" "%TMP%"
"%ProgramFiles%\WinRAR\UnRAR.exe" x -inul -p%PASS% "%PATH%\%NAME%" "%TMP%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %TMP% /Q /S
Del "UnRAR.exe" 
cls
title PASSWORD FOUND
echo ---------------------------------------------
echo       CRACKED BY THE CIPHER OF VORTEX
echo.
echo ---------------------------------------------
echo.
echo          MOT DE PASSE DECHIFFRER
echo.
echo FICHIER  = %NAME%
echo.
echo CRACKED PASSWORD = %PASS%
echo.
"%ProgramFiles%\WinRAR\winrar.exe" x -ibck -r -y -p%PASS% "%PATH%\%NAME%" *.* "%PATH%\%NAME%"
echo       VOTRE FICHER EST DEJA DECOMPRESSER
echo.
echo          DANS LA RACINE DE VOTRE LIEN
echo.
echo ---------------------------------------------
echo                  FELICITATION!
echo.
echo ---------------------------------------------
echo.
echo MERCI DE NOUS AVOIR FAIS CONFIANCE ET TESTER 
echo.
echo                 NOTRE OUTIL
pause>nul

exit
REM ==============DEARCHIVAGE VIA BRUTE FORCING====================================