if [ -f "~/.gitconfig" ]; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

cp ./.gitconfig ~/.gitconfig
echo 'alias gits="git status"' >> ~/.profile
