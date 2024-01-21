#!/bin/bash

# Prompt user to select a theme
theme=$(osascript -e 'choose from list {"Theme1", "Theme2"} with title "Select a Theme"')

# Install selected theme based on user choice
case $theme in
  "Theme1") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/1themeinstall.sh" | bash ;;
  "Theme2") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/2themeinstall.sh" | bash ;;
  *) echo "Invalid selection"; exit 1 ;;
esac

# Additional installation steps if needed
# ...

echo -e "Installation complete!"
