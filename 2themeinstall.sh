main() {
    cd ~/Downloads/
    echo -e "Hacker-style theme initialising"
    echo -e "Hacker-Style theme downloading"
    echo -e "receiving xferd.."
    curl "https://raw.githubusercontent.com/ICrashWindows12/macsploit_theme_install/main/2.js" -o "./theme-tomorrow_night.js"
    echo -e "Downloaded!"
    echo -e "Applying the theme..."
    mv ~/Downloads/theme-tomorrow_night.js /Applications/Macsploit.app/Contents/Resources/CodeViewer_CodeViewer.bundle/Contents/Resources/ace.bundle/theme-tomorrow_night.js
    echo -e "Successfully installed theme!"
}

main
