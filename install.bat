@echo off
title PROTOCOLE D'INSTALLATION CYBROS
color 0e
echo ===========================================
echo   INITIALISATION DU PROTOCOLE CYBROS...
echo ===========================================
echo.

:: Liste des logiciels
winget install --id Brave.Brave -e --silent
winget install --id Elgato.StreamDeck -e --silent
winget install --id Razer.Synapse -e --silent
winget install --id Valve.Steam -e --silent
winget install --id Bytedance.TikTokLiveStudio -e --silent
winget install --id Streamlabs.StreamlabsDesktop -e --silent
winget install --id WhirlwindFX.SignalRGB -e --silent
winget install --id VMware.WorkstationPlayer -e --silent
winget install --id MSI.Afterburner -e --silent
winget install --id CrystalMarkSoftware.CrystalDiskInfo -e --silent
winget install --id Discord.Discord -e --silent

echo.
echo ===========================================
echo   DEPLOIEMENT TERMINE. GLHF.
echo ===========================================
pause
