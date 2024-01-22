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

# Function to install themes
install_theme() {
  local theme_url="$1"
  bash <(curl -s "$theme_url")
}

# Array of available themes
themes=("Hacker-Style UI" "TV Static UI" "QuackR")

# Prompt user to select a theme
selected_theme=$(osascript -e 'choose from list {"'"${themes[@]}"'", "Show Credits", "Cancel"} with title "Select a Theme"')

# Check if the user selected the "Show Credits" button
if [ "$selected_theme" == "Show Credits" ]; then
  show_credits
  exit 0
fi

# Check if the user selected a valid theme
if [[ " ${themes[@]} " =~ " ${selected_theme} " ]]; then
  theme_url="https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/${selected_theme// /}.sh"
  install_theme "$theme_url"
  echo -e "Installation complete!"
else
  echo "Installation canceled"
fi
