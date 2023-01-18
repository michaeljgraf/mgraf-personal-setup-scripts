# version of xcode to install
XCODE_VERSION="14.2"
XCODE_FILE="Xcode_$XCODE_VERSION.xip"
echo $XCODE_FILE
ls "$HOME/Downloads/"
# check if installation file is already downloaded
if [ -f "$HOME/Downloads/$XCODE_FILE" ]; then
    echo "$XCODE_FILE exists. Continuing to install..."
  else
    # sign in to apple developer login
    open https://developer.apple.com/downloads/index.action
    # alternate url https://developer.apple.com/account/?view=membership#/welcome

    printf "%s " "After using your browser to sign in, press enter to continue..."
    read -r ans
    echo "Next, you'll need to select the user/Downloads folder for the xcode download"
    printf "%s " "to proceed to this step, press enter to continue..."
    read -r ans

    # download xcode from the apple developer login:
    open "https://download.developer.apple.com/Developer_Tools/Xcode_$XCODE_VERSION/Xcode_$XCODE_VERSION.xip"
    printf "%s " "once the download is complete, press enter to continue..."
    read -r ans
fi

# extract xcode and move it to the application directory
echo "Installing xcode..."
xip -x ~/Downloads/$XCODE_FILE
mv ./Xcode.app /Applications/Xcode_$XCODE_VERSION.app
