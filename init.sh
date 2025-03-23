# # brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
# eval "$(/opt/homebrew/bin/brew shellenv)";

# # ohmyzsh
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # fzf
# $(brew --prefix)/opt/fzf/install

# #tmux
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# Initialize the dotfiles
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf;
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc;
