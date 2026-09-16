@echo off
echo Packaging game...
if exist game.love del game.love
if exist mygame.zip del mygame.zip

powershell Compress-Archive -Path main.lua, conf.lua, icon.png -DestinationPath mygame.zip -Force
ren mygame.zip game.love

echo Fusing into EXE...
if not exist love-engine\love.exe (
    echo ERROR: love.exe is missing from the love-engine folder!
    goto error
)

copy /b love-engine\love.exe + game.love love-engine\game.exe
del game.love
echo Done! Game built inside love-engine folder!
goto end

:error
echo Build failed. Check the love-engine folder.

:end
pause

