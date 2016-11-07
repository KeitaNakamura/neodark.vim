# neodark.vim

### Vim (True color)
![vim](https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot.png)

### Vim (256 color, gray only)
<img src="https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot_256color.png" width="437">

### tmux
![tmux](https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot_tmux.png)

## Installation

### Vim
For vim-plug
```vim
Plug 'KeitaNakamura/neodark.vim'
colorscheme neodark
let g:neodark#background='' " black, gray or brown
```

If you want to use 256-color in both of vim and gvim, set
```vim
let g:neodark#use_256color = 1 " default: 0
```

[Airline](https://github.com/vim-airline/vim-airline) and [lightline](https://github.com/itchyny/lightline.vim) themes are also included. For lightline:
```vim
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'
```
For airline, just use!

### Terminal
Custom terminal themes (`terms/NeoDark{BackgroundColor}.terminal` for Terminal.app and `terms/NeoDark{BackgroundColor}.itermcolors` for iTerm2) are also available.
```vim
let g:neodark#use_custom_terminal_theme = 1 " default: 0
```
In this case, even if you use a terminal which doesn't support true color like Terminal.app, you can get true color scheme!

### tmux
```
cat tmuxcolors.conf >> ~/.tmux.conf
```
or
```
set -g @plugin 'KeitaNakamura/neodark.vim'
```
in `.tmux.conf` with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
