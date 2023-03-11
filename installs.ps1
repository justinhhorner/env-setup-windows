# ====================
# DEVELOPMENT
# ====================
echo "Installing Git..."
winget install -e Git.Git --accept-package-agreements --accept-source-agreements

echo "\nInstalling GitHub CLI..."
winget install -e GitHub.cli --accept-package-agreements --accept-source-agreements

echo "\nInstalling VS Code..."
winget install -e Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements

echo "\nInstalling Visual Studio 2022 Community..."
winget install -e Microsoft.VisualStudio.2022.Community --accept-package-agreements --accept-source-agreements

echo "\nInstalling Unity Hub..."
winget install -e Unity.UnityHub --accept-package-agreements --accept-source-agreements

echo "\nInstalling Epic Games Store..."
winget install -e EpicGames.EpicGamesLauncher --accept-package-agreements --accept-source-agreements

# ====================
# GAMING
# ====================
echo "\nInstalling Steam..."
winget install -e Valve.Steam --accept-package-agreements --accept-source-agreements 

#=====================
# FONTS
#=====================
# Registering fonts on Windows via Powershell is not very elegant.
# Open explorer to the current dir during clean up to install via UI instead.
echo "\nDownloading JetBrains Mono..."
curl https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip -OutFile JetBrainsMono.zip
echo "Extracting JetBrains Mono archive..."
Expand-Archive .\JetBrainsMono.zip

# =====================
# CLEAN UP
#=====================
echo "\nCleaning up..."
rm -Force .\JetBrainsMono.zip

echo "Opening JetBrains Mono fonts directory..."
explorer .\JetBrainsMono\fonts

echo "\nFinished!"