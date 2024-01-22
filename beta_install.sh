#!/bin/bash

# Function to display credits
show_credits() {
  osascript -e 'tell application "System Events" to activate
                tell application "Finder"
                  set creditsText to "Credits:\n\n🖼️ Image of the App\n📝 Theme Installer\n🔢 0.2\n👤 901million"
                  display dialog creditsText with title "Theme Credits"
                end tell'
}

# Prompt user to select a theme
theme=$(osascript -e 'choose from list {"Hacker-Style UI", "TV Static UI", "QuackR", "Show Credits"} with title "Select a Theme or try run QuackR"')

# Check if the user selected the "Show Credits" option
if [ "$theme" == "Show Credits" ]; then
  show_credits
  exit 0
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
