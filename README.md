# neodark.vim

### Vim (True color)

**Default color**

![vim](https://github.com/KeitaNakamura/neodark.vim/blob/master/default.png)

**`#202020` background color**

![vim](https://github.com/KeitaNakamura/neodark.vim/blob/master/202020.png)

### Vim (256 color)
![vim](https://github.com/KeitaNakamura/neodark.vim/blob/master/256.png)

### tmux
![tmux](https://github.com/KeitaNakamura/neodark.vim/blob/master/tmux.png)

## Installation

### Vim
For vim-plug

```vim
Plug 'KeitaNakamura/neodark.vim'
colorscheme neodark
```

If you want to change background, set the 6 digit color code:

```vim
let g:neodark#background = '#202020'
```

To use 256-color in both of vim and gvim:

```vim
let g:neodark#use_256color = 1 " default: 0
```

To use your default terminal background:
```vim
let g:neodark#terminal_transparent = 1 " default: 0
```

If you want solid vertical split matching the statusline:
```vim
let g:neodark#solid_vertsplit = 1 " default: 0
```

[Airline](https://github.com/vim-airline/vim-airline) and [lightline](https://github.com/itchyny/lightline.vim) themes are also included. For lightline,

```vim
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'
```

For airline, just use!

### Terminal
Custom terminal themes (`terms/NeoDark.terminal` for Terminal.app and `terms/NeoDark.itermcolors` for iTerm2) are also available.

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

in `.tmux.conf` with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).
[tmux-statusbar](https://github.com/KeitaNakamura/tmux-statusbar) is used for tmux statusbar in the screen shot.

## Inspiration and special thanks
* [tyrannicaltoucan/vim-deep-space](https://github.com/tyrannicaltoucan/vim-deep-space)
* [tyrannicaltoucan/vim-quantum](https://github.com/tyrannicaltoucan/vim-quantum)
* [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
