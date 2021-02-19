## Oh my bash
Get your terminal a nice look, [Oh my bash's github](https://github.com/ohmybash/oh-my-bash)
### Install
```shell
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
```
### Theme
[Here](https://github.com/ohmybash/oh-my-bash/wiki/Themes) you can see a list of available themes, I personally use [powerline](https://github.com/ohmybash/oh-my-bash/wiki/Themes#powerline)
### powerline installation
You first need to install a font with the powerline symbols, full documentation
of this theme [here](https://github.com/ohmybash/oh-my-bash/tree/master/themes/powerline)
```shell
sudo apt-get install fonts-powerline
```
Then after installing the fonts, you just set the theme by editing your`~/.bashrc` file like this
```shell
OSH_THEME="powerline"
```
## Zsh
### Install
```shell
sudo apt update
sudo apt install zsh
```
### Make default
```shell
chsh -s $(which zsh)
```
### Oh my zsh
#### Install
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### Gruvbox Theme
```shell
curl -L https://raw.githubusercontent.com/sbugzu/gruvbox-zsh/master/gruvbox.zsh-theme > ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme
```
### Install exa
```shell
sudo apt install exa
```
Otherwise
```shell
wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
unzip exa-linux-x86_64-0.8.0.zip
sudo mv exa-linux-x86_64 /usr/local/bin/exa
```
```shell
vim .zshrc
alias ls="exa"
```
## Fonts
```shell
unzip Hack.zip -d ~/.fonts
fc-cache -fv
```
## Themes
```shell
mkdir ~/.themes
tar -xf Snow-alien.tar.xz -C ~/.themes
tar -xf Kripton.tar.xz ~/.themes
mv Snow-alien ~/.themes
mv Kripton ~/.themes
```

## Icons
```shell
mkdir ~/.icons
tar -xf 02-Flat-Remix-Blue-Dark_20201112.tar.xz
mv Flat-Remix-Blue-Dark ~/.icons
```

## Cursor
```shell
tar -xf 01-Vimix-cursors.tar.xz 
mv Vimix-cursors ~/.icons
```

## Apps
### Tor Browser
```shell
sudo add-apt-repository ppa:micahflee/ppa
sudo apt update 
sudo apt install torbrowser-launcher
```

### Telegram
```shell
sudo add-apt-repository ppa:atareao/telegram
sudo apt update && sudo apt install telegram
```
### Kdenlive
```shell
sudo apt install kdenlive
```

### Pitivi
```shell
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.pitivi.Pitivi
```
#### Update
```shell
flatpak update org.pitivi.Pitivi
```
### Plank
```shell
sudo apt install plank
```
### Vim
```shell
sudo apt install vim
sudo apt install vim-gtk3
```
#### Git
```shell
sudo apt install git
```
curl -sL install-node.now.sh | sh

#### Tmux
```shell
sudo apt install tmux
```
#### Plug
```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### Using Fugitive for Vim
##### Installing and Config
```shell
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q
```
####  Using Vim-Gitgutter
##### Installing
```shell
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q
```
##### Credentials catching
Turn on the credential helper so that Git will save your password in memory for some time. By default, Git will cache your password for 15 minutes.
```shell
git config --global credential.helper cache
# Set git to use the credential memory cache
```
To change the default password cache timeout, enter the following:
```shell
git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)
```
### Gimp
```shell
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp
```

### Pip
```shell
sudo apt update
sudo apt install python3-pip
```
#### Udate pip and Update modules
```shell
pip install -U pip
pip3 list -o --format columns|  cut -d' ' -f1|xargs -n1 pip3 install -U
```

### yt-dlc
```shell
sudo curl -L https://github.com/blackjack4494/yt-dlc/releases/latest/download/youtube-dlc -o /usr/local/bin/youtube-dlc
sudo chmod a+rx /usr/local/bin/youtube-dlc
```

### Disk Manager
```shell
sudo apt install gnome-disk-utility
```

### PostgreSQL
#### Install
```shell
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql
```
#### Run
```shell
sudo su -l postgres
psql
\q
exit
```

#### pgcli
```shell
sudo apt-get install pgcli
```

#### CREATE DATABASE
```shell
psql -h localhost -p portnumber -U user database
psql -h localhost -p 5432 -U postgres scratch
```
### Docklike
```shell
sudo add-apt-repository ppa:xubuntu-dev/extras && sudo apt update && sudo apt install xfce4-docklike-plugin
```

### Conky
```shell
sudo apt install conky
vim .conkyrc
```

### Panel
```shell
cd ~/.config/gtk-3.0/gtk.css
```
### Clock
`<span font_desc = "Hack Nerd Font 11"  foreground = "#47def1"  > %b,%d</span><span font_desc = "Source Code Pro   11"   foreground = "#ccffff" > %I:%M %p</span>`
###  Net Tools
```shell
sudo apt install net-tools
```
### Change icons in dock
```shell
cd /usr/share/applications
sudo vi app.desktop 
```
Change `Icon=image.png` for
`Icon=/usr/share/icons/Flat-Remix-Blue-Dark/apps/scalable/app.svg`

### Slack
```shell
sudo apt install slack-desktop
```

### F.lux
Download this [package](https://launchpad.net/~nathan-renniewaldock/+archive/ubuntu/flux/+files/fluxgui_1.2.0~pre~20190501-g0548b6f-1~eoan_all.deb)
```shell
sudo dpkg -i fluxgui_1.2.0 ~ pre ~ 20190501-g0548b6f-1 ~ eoan_all.deb
sudo apt-get install fluxgui
```

## Customize Discord
### Install BetterDiscord
```shell
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
chmod +x betterdiscordctl
sudo mv betterdiscordctl /usr/local/bin
betterdiscordctl install 
```
### Add a theme
```shell
cd .config/BetterDiscord/themes/
vim Duvbox.theme.css
```
I'm currently using [this](https://github.com/patrykf03/Discord-Gruvbox#Discord-Gruvbox) Gruvbox like theme for Discord

## Install Pinyin
```
Language Support
Install/Remove Languages
Chinese Simplified
sudo reboot
https://pinyin.sogou.com/linux/
Download for Ubuntu 64-bit
sudo dpkg -i sogoupinyin_版本号_amd64.deb
sudo apt -f install
sudo apt-get remove fcitx-ui-qimpanel
