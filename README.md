# Dotfiles

These Dotfiles are based on [Holman dotfiles](https://github.com/holman/dotfiles/).


## Structure

Everthing's built around topic areas. Each directory is a topic. 

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into the environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `/bin/dot`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into `$HOME`.


## Install

Ensure xcode is installed and the license is accepted. Then install everything with the following.

```sh
git clone https://github.com/rsmall/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bin/dot
```


## Updating

Run ```./bin/dot``` to update dependencies from time-to-time.


## Afterwards

- iterm2 -> preferences -> profile -> general -> "Send text at start:" `tmux attach -t base || tmux new -s base`
- iterm2 -> preferences -> profiles -> colors -> Color Presets -> Import -> ~/.iterm2-color-schemes
- iterm2 -> preferences -> profiles -> text -> Some Powerline font
- Spectacle -> Map "Left Half" to "Alt+CMD+LEFT_ARROW" and "Right Half" to "Alt+CMD+RIGHT_ARROW"

