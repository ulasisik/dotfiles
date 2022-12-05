# dotfiles

This repository contains dotfiles required to configure terminal on macOS.

## Required tools:

- iTerm2
- Oh My Zsh
- Powerlevel10k
- Vim packages: airline (status bar), todo.txt (fancy todo lists), NERDTree (filesystem tree), VTR (vim tmux runner), VTN (vim tmux navigator), delimitMate (automaic closing of quotes and paranthesis), jedi-vim (python autocompletion), SimplyFold (python folding)
- FZF (fuzzy finder)

## Install iTerm2
```
brew cask install iterm2
```

## Install Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
````

## Powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
```

### iTerm2 Configuration
1. Start iTerm2 and type `y` to install recommended font types.
2. Restart iTerm2 after installation and continue with the configuration
3. Continue configuration

## Install FZF
```
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install
```

Some other usefull stuff to add `~/.zshrc`:
```
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=‘—height=40% —preview=“cat {}” —preview-window=right:60%:wrap’

# Below line should already be added:
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

### bat
For syntax-highlighted preview, also install bat:
```
brew install bat
```

### Vim Configuration
First, install VundleVim. Then, download .vimrc file and install plugins with `:PluginInstall`
The colour theme should be installed separately. 

