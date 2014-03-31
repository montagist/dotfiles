#mv . ~/.dotfiles
printf "\n" >> ~/.profile
echo "# -- montagist dotfiles -- #" >> ~/.profile
echo "source `pwd`/gitprompt.sh" >> ~/.profile
echo 'export PS1="\u@\h \w \[\e[0;31m\]\$git_branch\[\e[0;31m\]\$git_dirty\$git_stashberry\[\e[0m\]$ "' >> ~/.profile
