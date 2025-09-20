# termazing
termux stuff
a ruby, dart, js and lua config for neovim in termux
take in mind this is experimental


to install you can just copy paste (review the script before installing it, take in mind it calls to another script to get nerd fonts!)
```
pkg update && pkg upgrade -y
```
```
pkg install mandoc &&
pkg install curl ncurses-utils git
```
```
git clone https://github.com/dotsilva/termazing.git &&
cp ~/termazing/neomux.sh ~/ &&
chmod +x neomux.sh &&
./neomux.sh
```
