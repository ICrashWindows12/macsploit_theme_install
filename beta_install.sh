#!/bin/bash

# Function to display credits
show_credits() {
  icon_url="https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/Theme%20InstallER.png"

  # Display credits with the image as an icon in the center
  osascript -e "tell application \"System Events\" to activate
                tell application \"Finder\"
                  set creditsText to \"Credits:\\n\\n📝 Name of the App\\n🔢 Version Number\\n👤 Creator\"
                  display dialog creditsText buttons {\"OK\"} with title \"Theme Credits\" icon location POSIX file \"$icon_url\"
                end tell"
}

# Prompt user to select a theme
theme=$(osascript -e 'choose from list {"Hacker-Style UI", "TV Static UI", "QuackR"} with title "Select a Theme" buttons {"Show Credits", "Cancel"}')

# Check if the user selected the "Show Credits" button
if [ "$theme" == "Show Credits" ]; then
  show_credits
  exit 0
fi

# Install selected theme based on user choice
case $theme in
  "Hacker-Style UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/1themeinstall.sh" | bash ;;
  "TV Static UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/2themeinstall.sh" | bash ;;
  "QuackR") curl -s "https://raw.githubusercontent.com/ZackDaQuack/macsploit-custom-themes/main/duck.sh" | bash ;;
  *) echo "Installation canceled"; exit 0 ;;
esac

# Additional installation steps if needed
# ...

echo -e "Installation complete!"
