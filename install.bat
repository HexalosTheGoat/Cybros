@echo off
title PROTOCOLE D'INSTALLATION CYBROS
color 0e

:: Vérification des droits administrateur
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :init
) else (
    echo [!] ERREUR : Tu dois lancer ce script en tant qu'ADMINISTRATEUR.
    pause
    exit
)

:init
echo ===========================================
echo    INITIALISATION DU PROTOCOLE CYBROS...
echo ===========================================
echo.

:: Attendre la connexion Internet
echo [?] Verification de la connexion Internet...
:check_ping
ping -n 1 8.8.8.8 >nul
if %errorLevel% neq 0 (
    echo [!] En attente d'Internet... (Branche ton cable ou connecte le Wi-Fi)
    timeout /t 5 >nul
    goto :check_ping
)
echo [OK] Internet detecte.

:: Mise à jour des sources et acceptation des termes
echo [+] Preparation de Winget...
winget source update --accept-source-agreements

:: --- NAVIGATEUR ET COMMUNICATIONS ---
echo [+] Configuration Web et Social...
winget install --id Brave.Brave -e --silent --accept-package-agreements
winget install --id Discord.Discord -e --silent --accept-package-agreements

:: --- GAMING ET DRIVERS (RX 6800) ---
echo [+] Configuration Materielle et Drivers...
winget install --id AMD.Adrenalin -e --silent --accept-package-agreements
winget install --id Valve.Steam -e --silent --accept-package-agreements
winget install --id Razer.Synapse -e --silent --accept-package-agreements
winget install --id Elgato.StreamDeck -e --silent --accept-package-agreements
winget install --id WhirlwindFX.SignalRGB -e --silent --accept-package-agreements
winget install --id MSI.Afterburner -e --silent --accept-package-agreements

:: --- STREAMING ET CAPTURE ---
echo [+] Configuration Streaming et Clips...
winget install --id Medal.Medal -e --silent --accept-package-agreements
winget install --id Bytedance.TikTokLiveStudio -e --silent --accept-package-agreements
winget install --id Streamlabs.StreamlabsDesktop -e --silent --accept-package-agreements

:: --- MONTAGE ET MULTIMEDIA ---
echo [+] Configuration Media...
winget install --id ByteDance.CapCut.Desktop -e --silent --accept-package-agreements
winget install --id mpc-be.mpc-be -e --silent --accept-package-agreements
winget install --id Spotify.Spotify -e --silent --accept-package-agreements

:: --- SYSTEME ET UTILITAIRES ---
echo [+] Maintenance Systeme...
winget install --id VMware.WorkstationPlayer -e --silent --accept-package-agreements
winget install --id CrystalMarkSoftware.CrystalDiskInfo -e --silent --accept-package-agreements
winget install --id 7zip.7zip -e --silent --accept-package-agreements
winget install --id Microsoft.VCRedist.2015+.x64 -e --silent --accept-package-agreements

echo.
echo ===========================================
echo    DEPLOIEMENT TERMINE.
echo    INFO : Redemarre ton PC pour AMD et Razer.
echo ===========================================
pause
