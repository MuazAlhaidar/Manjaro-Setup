pip install powerline-status
pip install powerline-gitstatus

# Getting powerline patch fonts
git clone https://github.com/powerline/fonts.git --depth=1 powerline-fonts
cd powerline-fonts
./install.sh

ls ~/.local/share/fonts

# Font manager is also very helpful
yay -S font-manager

echo "
set laststatus=2" >> ~/.vimrc

echo "
# Powerline configuration
if [ -f $HOME/.local/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh ]; then
    $HOME/.local/bin/powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    source $HOME/.local/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh
fi" >> ~/.bashrc

source ~/.bashrc
