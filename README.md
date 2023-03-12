# For Oracle 8.x env with neovim, OhMyZsh and colorls

Install WSL and Virtual Tech in Windows Apps

Install NerdFont Hack font:
#https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip

Install the Windows compatible fonts (right-click Install)
Set default Terminal font to Hack NFM

Powershell>
```
wsl set-fdefault-version 2
wsl --install -d OracleLinux_8_5
```
Linux>
```
sudo dnf -y update
sudo dnf -y install git zsh
sudo vipw # set account shell to /usr/bin/zsh
sudo pwconv
git clone http://github.com/mntbighker/Win_env
mv Win_env/run8.sh .
sh ./run8.sh
p10k configure
```
open/close nvim twice to install plugins
