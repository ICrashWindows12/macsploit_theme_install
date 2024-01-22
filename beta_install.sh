#!/bin/bash

# Function to display credits
show_credits() {
  osascript -e 'display dialog "![Theme Installer](https://github.com/ICrashWindows12/macsploit_theme_install/blob/main/Theme%20InstallER.png?raw=true)\nVersion: 0.2\nDeveloper: 901million" with title "Theme Credits" with icon file "path/to/your/icon/image.png"'
}

# Prompt user to select a theme
theme=$(osascript -e 'choose from list {"Hacker-Style UI", "TV Static UI", "QuackR"} with title "Select a Theme"')

# Check if the user selected the "Show Credits" option
if [ "$theme" == "Show Credits" ]; then
  show_credits
  exit 0
elif [ -z "$theme" ]; then
  exit 0  # User clicked "Cancel"
fi

# Install selected theme based on user choice
case $theme in
  "Hacker-Style UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/1themeinstall.sh" | bash ;;
  "TV Static UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/2themeinstall.sh" | bash ;;
  "QuackR") curl -s "https://raw.githubusercontent.com/ZackDaQuack/macsploit-custom-themes/main/duck.sh" | bash ;;
  *) echo "Invalid selection"; exit 1 ;;
esac

# Additional installation steps if needed
# ...

echo -e "Installation complete!"
