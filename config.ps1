# Run this script in a new terminal session after installs have completed.

# ====================
# GIT
# ====================
echo "Configuring Git..."
$GIT_USERNAME   = Read-Host "What's your Git username?"
$GIT_EMAIL      = Read-Host "What's your git email address?"
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL