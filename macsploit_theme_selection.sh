#!/bin/bash

# Prompt user to select a theme
theme=$(osascript -e 'choose from list {"Hacker-Style UI", "TV Static UI", "QuackR"} with title "Select a Theme or run QuackR"')

# Install selected theme based on user choice
case $theme in
  "Hacker-Style UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/1themeinstall.sh" | bash ;;
  "TV Static UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/2themeinstall.sh" | bash ;;
  "QuackR") bash <(curl -s https://raw.githubusercontent.com/ZackDaQuack/macsploit-custom-themes/main/duck.sh) ;;
  *) echo "Invalid selection"; exit 1 ;;
esac

# Additional installation steps if needed
# ...

echo -e "Running Selected Options..."
