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
## Fonts
```shell
unzip Hack.zip -d ~/.fonts
fc-cache -fv
```
## Themes
```shell
mkdir ~/.themes
tar -xf Juno-ocean.tar.xz ~/.themes
mv Juno-ocean ~/.themes
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
cd ~/.config
vim .conkyrc
```

### Panel
```shell
cd ~/.config/gtk-3.0/gtk.css
```
