#!/bin/sh

if ! [ -f $HOME/Win_env/.tmux.conf ]; then
  echo -e "Please git clone into $HOME before running run.sh\n"
  exit
fi

if ! [ -f /usr/bin/nvim ]; then
  sudo dnf -y module reset ruby
  sudo dnf -y module reset nodejs
  sudo dnf -y module enable ruby:2.6
  sudo dnf -y module enable nodejs:18
  sudo dnf -y remove ruby*
  sudo dnf -y config-manager --set-enabled ol9_appstream
  sudo dnf -y install oracle-epel-release-el9
  sudo dnf -y install neovim python39 ruby rubygems luarocks zsh npm nodejs cargo cmake tmux wget
fi

cd $HOME
rm -rf .config
mv Win_env/.config .
mv Win_env/.tmux.conf .
mv Win_env/install.sh .
gem install colorls
cargo install tree-sitter-cli rust_fzf
echo -e "### Type exit after the oh-my-zsh install script finishes, to complete setup ###\n"
sh ./install.sh && rm ./install.sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

rm ./.zshrc
mv Win_env/.zshrc .

rm -rf Win_env
