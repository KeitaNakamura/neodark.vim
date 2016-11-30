# neodark.vim

### Vim (True color)
![vim](https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot.png)

### Vim (256 color, gray only)
<img src="https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot_256color.png" width="445">

### tmux
![tmux](https://github.com/KeitaNakamura/neodark.vim/blob/master/Screenshot_tmux.png)

## Installation

### Vim
For vim-plug

```vim
Plug 'KeitaNakamura/neodark.vim'
colorscheme neodark
```

If you want to change background, add this **before `colorscheme neodark`**

```vim
let g:neodark#background='black' " black, gray or brown
```

If you want to use 256-color in both of vim and gvim, put this **before `colorscheme neodark`**

```vim
let g:neodark#use_256color = 1 " default: 0
```

If you want to use your default terminal background, put this **before `colorscheme neodark`**
```vim
let g:neodark#terminal_transparent = 1 " default: 0
```

[Airline](https://github.com/vim-airline/vim-airline) and [lightline](https://github.com/itchyny/lightline.vim) themes are also included. For lightline,

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

## Inspiration and special thanks
* [tyrannicaltoucan/vim-deep-space](https://github.com/tyrannicaltoucan/vim-deep-space)
* [tyrannicaltoucan/vim-quantum](https://github.com/tyrannicaltoucan/vim-quantum)
* [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
