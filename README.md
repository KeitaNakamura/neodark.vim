# neodark.vim

#### Vim
![vim](https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot.png)

#### tmux
![tmux](https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot%20tmux.png)

## Installation

### Vim
For vim-plug
```vim
Plug 'KeitaNakamura/neodark.vim'
colorscheme neodark
```

[Airline](https://github.com/vim-airline/vim-airline) and [lightline](https://github.com/itchyny/lightline.vim) themes are also included. For lightline
```vim
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'
```

### Terminal
Use `terms/NeoDark.terminal` for Terminal.app and `terms/NeoDark.itermcolors` for iTerm2.

### tmux
```
cat tmuxcolors.conf >> ~/.tmux.conf
```
or
```
set -g @plugin 'KeitaNakamura/neodark.vim'
```
in `.tmux.conf` with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
