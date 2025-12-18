echo "export SHELL=`which zsh`" >> ~/.profile
echo "`[ -z "$ZSH_VERSION" ] && exec \"$SHELL\" -l" >> ~/.profile
