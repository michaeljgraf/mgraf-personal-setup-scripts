# ensure shell is zsh
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "Your current shell is $SHELL"
    echo "The shell will need to be changed and this script then rerun"
    echo "This script changes the shell to zsh"
    echo ""
    echo "Once the script is complete restore your current shell via this command:"
    echo "chsh -s \"$SHELL\""
    echo ""
    printf "%s " "Allow script to change shell? Close if not, else press enter to continue..."
    read -r ans
    echo "Changing shell to zsh, please rerun this script once complete"
    chsh -s "$(which zsh)"
    echo "Changed shell, exiting..."
    exit 1
fi

# install xcode
source install_xcode.sh
# install oh my zsh TODO
# dependency upon xcode installation

# install brew TODO

# install nvm TODO
# dependency upon brew

# install node TODO
# dependency upon nvm

# install jetbrains toolbox TODO

# install android studio TODO
# dependency upon jetbrains toolbox