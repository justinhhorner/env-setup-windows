# ====================
# DEVELOPMENT
# ====================
winget install -e Git.Git --accept-package-agreements --accept-source-agreements
winget install -e GitHub.cli --accept-package-agreements --accept-source-agreements
winget install -e Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
winget install -e Microsoft.VisualStudio.2022.Community --accept-package-agreements --accept-source-agreements

# ====================
# GAMING
# ====================
winget install -e Valve.Steam --accept-package-agreements --accept-source-agreements 

#=====================
# FONTS
#=====================
# Registering fonts on Windows via Powershell is not very elegant.
# Open explorer to the current dir during clean up to install via UI instead.
curl https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip -OutFile JetBrainsMono.zip
Expand-Archive .\JetBrainsMono.zip

# =====================
# CLEAN UP
#=====================
rm -Force .\JetBrainsMono.zip
explorer .\JetBrainsMono\fonts