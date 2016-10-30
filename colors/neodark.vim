highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:colors_name = 'neodark'

if !exists('g:neodark_italics')
  let g:neodark_italics = 0
endif

let s:base1     = ['#1F2F38', 0]
let s:base2     = ['#263A45', 8]
let s:base3     = ['#475C69', 13]
let s:base4     = ['#658595', 7]
let s:base5     = ['#AABBC4', 15]

let s:red       = ['#DC657D', 1]
let s:green     = ['#84B97C', 2]
let s:yellow    = ['#D4B261', 3]
let s:blue      = ['#639EE4', 4]
let s:purple    = ['#B888E2', 5]
let s:orange    = ['#E18254', 6]
let s:pink      = ['#E69CA0', 9]
let s:teal      = ['#4DB6AC', 10]
let s:beige     = ['#C7C18B', 11]
let s:cyan      = ['#72C7D1', 12]
let s:brown     = ['#AE8785', 14]

function! s:hi(group, fg, bg, attr)
  let l:attr = a:attr
  if g:neodark_italics == 0 && l:attr ==? 'italic'
    let l:attr = 'none'
  endif

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif

  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun

" Vim Editor
call s:hi('ColorColumn',               '',         s:base2,    '')
call s:hi('Cursor',                    s:base2,    s:base5,    '')
call s:hi('CursorColumn',              '',         s:base2,    '')
call s:hi('CursorLine',                '',         s:base2,    'none')
call s:hi('CursorLineNr',              s:cyan,      s:base2,    'none')
call s:hi('Directory',                 s:blue,     '',         '')
call s:hi('DiffAdd',                   s:green,    s:base2,    'none')
call s:hi('DiffChange',                s:yellow,   s:base2,    'none')
call s:hi('DiffDelete',                s:red,      s:base2,    'none')
call s:hi('DiffText',                  s:blue,     s:base1,    'none')
call s:hi('ErrorMsg',                  s:red,      s:base1,    'bold')
call s:hi('FoldColumn',                s:base4,    s:base2,    '')
call s:hi('Folded',                    s:base3,    s:base1,    '')
call s:hi('IncSearch',                 s:beige,    '',         '')
call s:hi('LineNr',                    s:base3,    '',         '')
call s:hi('MatchParen',                s:cyan,    s:base1,    'undercurl')
call s:hi('ModeMsg',                   s:green,    '',         '')
call s:hi('MoreMsg',                   s:green,    '',         '')
call s:hi('NonText',                   s:base4,    '',         'none')
call s:hi('Normal',                    s:base5,    s:base1,    'none')
call s:hi('Pmenu',                     s:base5,    s:base3,    '')
call s:hi('PmenuSbar',                 '',         s:base2,    '')
call s:hi('PmenuSel',                  s:base2,    s:green,    '')
call s:hi('PmenuThumb',                '',         s:base4,    '')
call s:hi('Question',                  s:blue,     '',         'none')
call s:hi('Search',                    s:base1,    s:beige,    '')
call s:hi('SignColumn',                s:base5,    s:base1,    '')
call s:hi('SpecialKey',                s:base4,    '',         '')
call s:hi('SpellCap',                  s:blue,     s:base1,    'undercurl')
call s:hi('SpellBad',                  s:red,      s:base1,    'undercurl')
call s:hi('StatusLine',                s:base5,    s:base3,    'none')
call s:hi('StatusLineNC',              s:base2,    s:base4,    '')
call s:hi('TabLine',                   s:base4,    s:base2,    'none')
call s:hi('TabLineFill',               s:base4,    s:base2,    'none')
call s:hi('TabLineSel',                s:yellow,   s:base3,    'none')
call s:hi('Title',                     s:red,      '',         'none')
call s:hi('VertSplit',                 s:base4,    s:base1,    'none')
call s:hi('Visual',                    s:base5,    s:base3,    '')
call s:hi('WarningMsg',                s:red,      '',         '')
call s:hi('WildMenu',                  s:base2,    s:green,	   '')

" Standard Syntax
call s:hi('Comment',                   s:base4,    '',         'italic')
call s:hi('Constant',                  s:red,     '',         '')
call s:hi('String',                    s:orange,   '',         '')
call s:hi('Character',                 s:orange,   '',         '')
call s:hi('Identifier',                s:teal,     '',         'none')
call s:hi('Function',                  s:blue,     '',         '')
call s:hi('Statement',                 s:green,    '',         'none')
call s:hi('Label',                     s:orange,   '',         '')
call s:hi('Exception',                 s:red,      '',         '')
call s:hi('PreProc',                   s:purple,      '',         '')
call s:hi('Define',                    s:purple,   '',         'none')
call s:hi('Macro',                     s:purple,   '',         '')
call s:hi('Type',                      s:yellow,   '',         'none')
call s:hi('StorageClass',              s:teal,     '',         '')
call s:hi('Special',                   s:pink,    '',         '')
call s:hi('Underlined',                s:blue,     '',         'none')
call s:hi('Error',                     s:red,      s:base1,    'bold')
call s:hi('Todo',                      s:base5,    s:base1,    'bold')
call s:hi('Conceal',                   s:beige,    s:base1,    '')

" Vim-Fugitive
call s:hi('diffAdded',                 s:green,    '',         '')
call s:hi('diffRemoved',               s:red,      '',         '')

" Vim-Gittgutter
call s:hi('GitGutterAdd',              s:green,    '',         '')
call s:hi('GitGutterChange',           s:yellow,   '',         '')
call s:hi('GitGutterDelete',           s:red,      '',         '')
call s:hi('GitGutterChangeDelete',     s:orange,   '',         '')

" indent-guides
call s:hi('IndentGuidesOdd',           '',         s:base2,    '')
call s:hi('IndentGuidesEven',          '',         s:base2,    '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete
