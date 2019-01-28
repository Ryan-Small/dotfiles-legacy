
# Reference our Vim configurations so that we can reuse them.
if [ ! -f ~/.config/nvim/init.vim ]
then
  mkdir -p ~/.config/nvim/
  ln -s $ZSH/vim/config/nvim/init.vim ~/.config/nvim/init.vim
fi

# Install the Python3 client for use with NeoVim.
pip3 install --user --upgrade --quiet neovim
