# For Oracle 8.x , 9.x env with neovim, OhMyZsh and colorls

Install WSL and Virtual Tech in Windows Apps

Install NerdFont Hack font in Windows:
#https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip

Install the Windows compatible fonts (right-click Install)
Set default Terminal font to Hack NFM

Powershell for 8.x>
```
wsl set-fdefault-version 2
wsl --install -d OracleLinux_8_5
```
Linux8>
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

Oracle 9.x must be installed from MS Store

Linux9>
```
sudo dnf -y update
sudo dnf -y install git zsh
sudo vipw # set account shell to /usr/bin/zsh
sudo pwconv
git clone http://github.com/mntbighker/Win_env
mv Win_env/run9.sh .
sh ./run9.sh
p10k configure
```
