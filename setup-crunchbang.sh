# Install apps via apt
sudo apt-get install git tmux vim zsh

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Change default shell to ZSH
chsh -s /usr/bin/zsh

# Install ZSH config
cd ~
git clone https://github.com/tonyblundell/.zsh.git
ln -s ~/.zsh/tonyblundell.zsh-theme ~/.oh-my-zsh/themes
rm ~/.zshrc
ln -s ~/.zsh/zshrc ~/.zshrc

# Install terminator config
cd ~
git clone https://github.com/tonyblundell/.terminator.git
mv ~/.config/terminator/config ~/.config/terminator/config.old
ln -s ~/.terminator/config ~/.config/terminator/config

# Install tmux config
git clone https://github.com/tonyblundell/.tmux.git
ln -s .tmux/tmux.conf .tmux.conf

# Install vim config
cd ~
git clone --recursive https://github.com/tonyblundell/.vim.git
ln -s .vim/vimrc .vimrc

# Install Inconsolata font
mkdir ~/.fonts
cd ~/.fonts
wget http://www.levien.com/type/myfonts/Inconsolata.otf

# Friendly advice
echo "Inconsolata font installed, select it in terminal profile settings"
echo "Log out then log back in for default shell setting to take effect"
