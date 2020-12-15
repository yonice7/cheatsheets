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
## Using Fugitive for Vim
### Installing and Config
```shell
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q
```
## Using Vim-Gitgutter
### Installing
```shell
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q
```
### Credentials catching
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
