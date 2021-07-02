sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim python3-pip python3-setuptools libreadline-gplv2-dev libncursesw5-dev libssl-dev /
libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libinput-tools tmux
pyhthon3 -m pip --upgrade pynvim

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install

git clone https://gitlab.com/cunidev/gestures
cd gestures
sudo python3 setup.py install

mkdir ~/.config/nvim
cp init.vim ~/.config/nvim

cp .zshrc ~/.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .tmux.conf.local ~/.

nvim -c "PlugInstall" -c "!q"

