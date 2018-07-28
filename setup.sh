# brew
git clone https://github.com/RomTin/Brewfile.git $HOME/.config/brewfile
brew file install

# vscode configuration
ln -s $HOME/Workspace/dotfiles/VSCode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -s $HOME/Workspace/dotfiles/VSCode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json

# python configuration
pywnv install -v 2.7.15
pyenv install -v 3.7.0
pyenv global 3.7.0

# go configuration
go getgithub.com/motemen/gore
go get github.com/nsf/gocode
go get github.com/k0kubun/pp
go get golang.org/x/tools/cmd/godoc

# erlang configuration
wget https://s3.amazonaws.com/rebar3/rebar3 && mv ./rebar3 $HOME/usr/bin/rebar3 && chmod +x $HOME/usr/bin/rebar3