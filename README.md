![header](https://github.com/KeitaNakamura/neodark.vim/blob/readme/img/header.png)

## Installation

```vim
Plug 'KeitaNakamura/neodark.vim' " vim-plug
set termguicolors                " recommended
colorscheme neodark
```

## Options

To use your default terminal background:
```vim
let g:neodark#terminal_transparent = 1 " default: 0
```

If you want solid vertical split matching the statusline:
```vim
let g:neodark#solid_vertsplit = 1 " default: 0
```

[airline](https://github.com/vim-airline/vim-airline) and [lightline](https://github.com/itchyny/lightline.vim) themes are also included. For lightline,

```vim
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'
```

For airline, just use!

## Terminal
Custom terminal themes (`terms/neodark.terminal` for Terminal.app and `terms/neodark.itermcolors` for iTerm2) are also available.

```vim
let g:neodark#use_custom_terminal_theme = 1 " default: 0
```

In this case, even if you use a terminal which doesn't support true color like Terminal.app, you can get true color scheme!

## Inspiration and special thanks
* [tyrannicaltoucan/vim-deep-space](https://github.com/tyrannicaltoucan/vim-deep-space)
* [tyrannicaltoucan/vim-quantum](https://github.com/tyrannicaltoucan/vim-quantum)
* [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim)
