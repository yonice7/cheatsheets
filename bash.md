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
