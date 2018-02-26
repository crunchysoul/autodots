# 🛠️ 🎩  Autodots 🚀
- ___Autodots___: Let dotfiles back themselves up.
- a bash script that automate commit and push dotfiles to your bare Git repository, so you can be more productive on other important things. 
- Author: crunchysoul
- Create: 2018-02-26
- License: WTFPL

## Install
- install fswatch for events listening, macOS: `brew install fswatch`
- clone or download scripts: `git clone git@github.com:crunchysoul/autodots.git`
- link script to executable path: `ln -s root/path/of/clone/* /usr/local/bin/`
- log out and log in to terminal, or source your bash/zsh rc file

## Usage
- open a terminal window
- type `autodots.sh`
- then autodots will listen to any changes you made to your dotfiles
- if you want autodots running on background, type `autodots.sh &` instead, and
  type `fg` to bring autodots to foreground 
- if you want to use autodots on background and also be able to close terminal
  window, type `nohup autodots.sh &` instead

## todo
1. integrate dotfiles bare repository setup
2. registry it to npm/gem
3. complete readme.md
4. create a cli for dotfiles configurations and provide different options

© 2018 wtfpl – do what the fuck you want to public license.
