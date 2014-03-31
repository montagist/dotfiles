sqlite_exists=`command -v sqlite3`
is_mac=`command -v sw_vers`
if [[ $sqlite_exists == "" ]]; then
  echo "Command history needs Sqlite3 to be installed!!!"
  if [[ $is_mac == "" ]]; then
    wget http://www.sqlite.org/sqlite-autoconf-3070603.tar.gz
  else
    curl "http://www.sqlite.org/sqlite-autoconf-3070603.tar.gz" -o "sqlite-autoconf-3070603.tar.gz"
  fi
  tar xvfz sqlite-autoconf-3070603.tar.gz
  cd sqlite-autoconf-3070603
  ./configure
  make
  make install
  cd ..
fi
cat cd.sh >> ~/.profile
