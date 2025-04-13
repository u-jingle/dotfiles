# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
eval "$(/opt/homebrew/bin/brew shellenv)";
brew bundle;

# oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# fzf
$(brew --prefix)/opt/fzf/install

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# mise
mise use -g usage

mise use --global node@18
mise install node@16

mise use -g java@corretto-8
mise install java@corretto-8;
mise install java@corretto-11;
mise install java@17;

mise plugin install maven
mise install maven@3.5
mise use -g maven@3

mise use -g gradle@8

# Initialize the dotfiles
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf;
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc;
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc;

mkdir -p $HOME/.config/mise;
ln -s $HOME/dotfiles/mise.toml $HOME/.config/mise/config.toml;
