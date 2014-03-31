montagist_inst=`grep "# -- montagist dotfiles -- #" ~/.profile`
if [[ montagist_inst == "" ]]; then
  for i in ./*/; do
    cd $i
    ./install.sh
    cd ..
  done
else
  echo "dotfiles already installed."
fi
