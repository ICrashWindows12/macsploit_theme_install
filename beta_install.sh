#!/bin/bash

# Function to display credits using AppleScript
show_credits() {
  osascript <<EOF
    set theDialogText to "Macsploit Theme Installer\\nVersion: 0.2\\nDeveloper: 901million"
    display dialog theDialogText with title "Theme Credits" buttons {"OK"} default button "OK" with icon alias ((path to home folder as text) & "Downloads:Theme InstallER.png")
EOF
}

# Function to display theme selection using AppleScript
show_theme_selection() {
  osascript <<EOF
    set themeButtons to {"Hacker-Style UI", "TV Static UI", "Credits"}
    set chosenTheme to choose from list themeButtons with title "Select a Theme" without multiple selections allowed and empty selection allowed
    if chosenTheme is false then
      error "User canceled."
    else
      return chosenTheme as string
    end if
EOF
}

# Prompt user to select a theme
theme=$(show_theme_selection)

# Check if the user selected the "Cancel" option
if [ "$theme" == "Cancel" ]; then
  exit 0  # User clicked "Cancel"
fi

# Check if the user selected the "Credits" option
if [ "$theme" == "Credits" ]; then
  show_credits
fi

# Install selected theme based on user choice
case $theme in
  "Hacker-Style UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/1themeinstall.sh" | bash ;;
  "TV Static UI") curl -s "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/2themeinstall.sh" | bash ;;
  *) echo "Invalid selection"; exit 1 ;;
esac

# Additional installation steps if needed
# ...

echo -e "Installation complete!"
